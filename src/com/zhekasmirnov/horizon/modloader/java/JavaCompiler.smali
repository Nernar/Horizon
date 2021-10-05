.class public Lcom/zhekasmirnov/horizon/modloader/java/JavaCompiler;
.super Ljava/lang/Object;
.source "JavaCompiler.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final holder:Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompiler;->context:Landroid/content/Context;

    .line 18
    invoke-static {p1}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->getInstance(Landroid/content/Context;)Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompiler;->holder:Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;

    return-void
.end method

.method private getClassFiles(Ljava/util/List;Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 23
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v0, 0x0

    .line 24
    :goto_b
    array-length v2, v1

    if-lt v0, v2, :cond_f

    .line 28
    :goto_e
    return-void

    .line 23
    :cond_f
    aget-object v2, v1, v0

    .line 24
    invoke-direct {p0, p1, v2}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompiler;->getClassFiles(Ljava/util/List;Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 28
    :cond_17
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e
.end method


# virtual methods
.method public compile(Lcom/zhekasmirnov/horizon/modloader/java/JavaDirectory;)Z
    .registers 11

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 32
    new-instance v0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerArguments;

    new-array v3, v1, [Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerArguments;-><init>([Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/zhekasmirnov/horizon/modloader/java/JavaDirectory;->getDestinationDirectory()Ljava/io/File;

    move-result-object v3

    .line 34
    invoke-static {v3, v1}, Lcom/zhekasmirnov/horizon/util/FileUtils;->clearFileTree(Ljava/io/File;Z)V

    .line 35
    invoke-virtual {p1}, Lcom/zhekasmirnov/horizon/modloader/java/JavaDirectory;->isVerboseRequired()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 36
    new-array v4, v2, [Ljava/lang/String;

    const-string v5, "-verbose"

    aput-object v5, v4, v1

    invoke-virtual {v0, v4}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerArguments;->add([Ljava/lang/String;)Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerArguments;

    .line 37
    new-array v4, v2, [Ljava/lang/String;

    const-string v5, "-nowarn"

    aput-object v5, v4, v1

    invoke-virtual {v0, v4}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerArguments;->add([Ljava/lang/String;)Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerArguments;

    .line 39
    :cond_29
    iget-object v4, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompiler;->holder:Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;

    invoke-virtual {v4}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->getBootFiles()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/zhekasmirnov/horizon/modloader/java/JavaDirectory;->getLibraryPaths(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 40
    if-eqz v4, :cond_5e

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5e

    .line 41
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "BOOT PATHS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 42
    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "-bootclasspath"

    aput-object v6, v5, v1

    aput-object v4, v5, v2

    invoke-virtual {v0, v5}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerArguments;->add([Ljava/lang/String;)Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerArguments;

    .line 44
    :cond_5e
    invoke-virtual {p1}, Lcom/zhekasmirnov/horizon/modloader/java/JavaDirectory;->getArguments()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerArguments;->add([Ljava/lang/String;)Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerArguments;

    .line 45
    new-array v4, v2, [Ljava/lang/String;

    const-string v5, "-proc:none"

    aput-object v5, v4, v1

    invoke-virtual {v0, v4}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerArguments;->add([Ljava/lang/String;)Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerArguments;

    .line 46
    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "-source"

    aput-object v5, v4, v1

    const-string v5, "1.7"

    aput-object v5, v4, v2

    invoke-virtual {v0, v4}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerArguments;->add([Ljava/lang/String;)Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerArguments;

    .line 47
    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "-d"

    aput-object v5, v4, v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v4}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerArguments;->add([Ljava/lang/String;)Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerArguments;

    .line 48
    invoke-virtual {p1}, Lcom/zhekasmirnov/horizon/modloader/java/JavaDirectory;->getAllSourceFiles()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerArguments;->add([Ljava/lang/String;)Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerArguments;

    .line 49
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "javac args="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    iget-object v4, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompiler;->holder:Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;

    invoke-virtual {v4, v0}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->compile(Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerArguments;)Z

    move-result v0

    if-nez v0, :cond_b3

    move v0, v1

    .line 72
    :goto_b2
    return v0

    .line 53
    :cond_b3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "compilation complete, installing libraries..."

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompiler;->holder:Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;

    iget-object v4, p1, Lcom/zhekasmirnov/horizon/modloader/java/JavaDirectory;->manifest:Lcom/zhekasmirnov/horizon/modloader/java/JavaLibraryManifest;

    iget-object v4, v4, Lcom/zhekasmirnov/horizon/modloader/java/JavaLibraryManifest;->libraryPaths:Ljava/util/List;

    invoke-virtual {v0, v4, v3}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->installLibraries(Ljava/util/List;Ljava/io/File;)V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-direct {p0, v0, v3}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompiler;->getClassFiles(Ljava/util/List;Ljava/io/File;)V

    .line 57
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " class files, adding..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 59
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 60
    :goto_105
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_164

    .line 62
    new-instance v4, Lcom/android/dx/command/dexer/Main$Arguments;

    invoke-direct {v4}, Lcom/android/dx/command/dexer/Main$Arguments;-><init>()V

    .line 63
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, v4, Lcom/android/dx/command/dexer/Main$Arguments;->fileNames:[Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Lcom/zhekasmirnov/horizon/modloader/java/JavaDirectory;->getBuildDexFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    .line 65
    iput-boolean v2, v4, Lcom/android/dx/command/dexer/Main$Arguments;->jarOutput:Z

    .line 66
    iput-boolean v1, v4, Lcom/android/dx/command/dexer/Main$Arguments;->strictNameCheck:Z

    .line 67
    iput-boolean v2, v4, Lcom/android/dx/command/dexer/Main$Arguments;->verbose:Z

    .line 69
    :try_start_12e
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Dexing java library: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    invoke-static {v4}, Lcom/android/dx/command/dexer/Main;->run(Lcom/android/dx/command/dexer/Main$Arguments;)I

    .line 71
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Dexing java library complete: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_161
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_161} :catch_172

    move v0, v2

    .line 72
    goto/16 :goto_b2

    .line 59
    :cond_164
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_105

    .line 72
    :catch_172
    move-exception v0

    .line 74
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "error occurred while building dex file for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
