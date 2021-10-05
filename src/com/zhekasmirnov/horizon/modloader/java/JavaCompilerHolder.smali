.class public Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;
.super Ljava/lang/Object;
.source "JavaCompilerHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$Component;,
        Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$JarComponent;,
        Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$100000000;
    }
.end annotation


# static fields
.field private static final COMPONENT_PATH:Ljava/lang/String; = "sdk/java/"

.field private static final instances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final COMPONENTS:[Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$Component;

.field private final COMPONENT_VERSION_UUID:Ljava/lang/String;

.field private configured:Z

.field private final context:Lcom/zhekasmirnov/horizon/modloader/ModContext;

.field private final installationDir:Ljava/io/File;

.field private isInitialized:Z

.field private isInitializing:Z

.field private isInstalled:Z

.field private final main:Lorg/eclipse/jdt/internal/compiler/batch/Main;


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->instances:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/zhekasmirnov/horizon/modloader/ModContext;)V
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$Component;

    new-instance v1, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$JarComponent;

    const-string v2, "sdk/java/"

    const-string v4, "android.jar"

    invoke-direct {v1, p0, v2, v4}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$JarComponent;-><init>(Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v3

    const/4 v1, 0x1

    new-instance v2, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$JarComponent;

    const-string v4, "sdk/java/"

    const-string v6, "horizon.jar"

    invoke-direct {v2, p0, v4, v6}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$JarComponent;-><init>(Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->COMPONENTS:[Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$Component;

    const-string v0, "34b14f6e-d8d1-48af-86a7-8adcb41396ce"

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->COMPONENT_VERSION_UUID:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->configured:Z

    iput-boolean v3, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->isInitialized:Z

    iput-boolean v3, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->isInitializing:Z

    iput-boolean v3, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->isInstalled:Z

    .line 154
    iput-object p1, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->context:Lcom/zhekasmirnov/horizon/modloader/ModContext;

    .line 155
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/zhekasmirnov/horizon/modloader/ModContext;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/zhekasmirnov/horizon/compiler/packages/Environment;->getJavacDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->installationDir:Ljava/io/File;

    .line 156
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->installationDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_49

    .line 157
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->installationDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 159
    :cond_49
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->installationDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 160
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;

    new-instance v1, Ljava/io/PrintWriter;

    invoke-virtual {p1}, Lcom/zhekasmirnov/horizon/modloader/ModContext;->getEventLogger()Lcom/zhekasmirnov/horizon/runtime/logger/EventLogger;

    move-result-object v2

    sget-object v4, Lcom/zhekasmirnov/horizon/runtime/logger/EventLogger$MessageType;->INFO:Lcom/zhekasmirnov/horizon/runtime/logger/EventLogger$MessageType;

    const-string v6, "BUILD"

    invoke-virtual {v2, v4, v6}, Lcom/zhekasmirnov/horizon/runtime/logger/EventLogger;->getStream(Lcom/zhekasmirnov/horizon/runtime/logger/EventLogger$MessageType;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-virtual {p1}, Lcom/zhekasmirnov/horizon/modloader/ModContext;->getEventLogger()Lcom/zhekasmirnov/horizon/runtime/logger/EventLogger;

    move-result-object v4

    sget-object v6, Lcom/zhekasmirnov/horizon/runtime/logger/EventLogger$MessageType;->FAULT:Lcom/zhekasmirnov/horizon/runtime/logger/EventLogger$MessageType;

    const-string v7, "BUILD"

    invoke-virtual {v4, v6, v7}, Lcom/zhekasmirnov/horizon/runtime/logger/EventLogger;->getStream(Lcom/zhekasmirnov/horizon/runtime/logger/EventLogger$MessageType;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v5

    check-cast v4, Ljava/util/Map;

    check-cast v5, Lorg/eclipse/jdt/core/compiler/CompilationProgress;

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/batch/Main;-><init>(Ljava/io/PrintWriter;Ljava/io/PrintWriter;ZLjava/util/Map;Lorg/eclipse/jdt/core/compiler/CompilationProgress;)V

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    .line 161
    return-void

    .line 163
    :cond_80
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "failed to allocate installation directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->installationDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$1000017(Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;)V
    .registers 1

    invoke-direct {p0}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->initialize()V

    return-void
.end method

.method static synthetic access$L1000003(Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->COMPONENT_VERSION_UUID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$L1000005(Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;)Lcom/zhekasmirnov/horizon/modloader/ModContext;
    .registers 2

    iget-object v0, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->context:Lcom/zhekasmirnov/horizon/modloader/ModContext;

    return-object v0
.end method

.method static synthetic access$L1000007(Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->isInitialized:Z

    return v0
.end method

.method static synthetic access$L1000008(Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->isInitializing:Z

    return v0
.end method

.method static synthetic access$S1000003(Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->COMPONENT_VERSION_UUID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000007(Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->isInitialized:Z

    return-void
.end method

.method static synthetic access$S1000008(Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->isInitializing:Z

    return-void
.end method

.method private awaitInitialization()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 202
    :goto_0
    iget-boolean v0, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->isInitialized:Z

    if-eqz v0, :cond_5

    return-void

    .line 203
    :cond_5
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;
    .registers 3

    .prologue
    .line 136
    sget-object v1, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->instances:Ljava/util/HashMap;

    monitor-enter v1

    .line 138
    :try_start_3
    sget-object v0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->instances:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v1

    .line 140
    return-object v0

    .line 138
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initialize()V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->isInstalled:Z

    .line 168
    iget-object v2, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->COMPONENTS:[Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$Component;

    move v0, v1

    .line 172
    :goto_7
    array-length v3, v2

    if-lt v0, v3, :cond_b

    return-void

    .line 168
    :cond_b
    aget-object v3, v2, v0

    .line 169
    invoke-interface {v3}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$Component;->isInstalled()Z

    move-result v4

    if-nez v4, :cond_33

    .line 170
    const-string v4, "JavaCompiler"

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "installing or re-installing java component: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zhekasmirnov/horizon/runtime/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-interface {v3}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$Component;->install()Z

    move-result v3

    if-nez v3, :cond_33

    .line 172
    iput-boolean v1, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->isInstalled:Z

    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static initializeForContext(Lcom/zhekasmirnov/horizon/modloader/ModContext;Lcom/zhekasmirnov/horizon/runtime/task/TaskManager;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhekasmirnov/horizon/modloader/ModContext;",
            "Lcom/zhekasmirnov/horizon/runtime/task/TaskManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/modloader/ModContext;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->getInstance(Landroid/content/Context;)Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 145
    sget-object v1, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->instances:Ljava/util/HashMap;

    monitor-enter v1

    .line 146
    :try_start_b
    new-instance v0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;

    invoke-direct {v0, p0}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;-><init>(Lcom/zhekasmirnov/horizon/modloader/ModContext;)V

    .line 147
    sget-object v2, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->instances:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/zhekasmirnov/horizon/modloader/ModContext;->context:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-virtual {v0}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->getInitializationTask()Lcom/zhekasmirnov/horizon/runtime/task/Task;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zhekasmirnov/horizon/runtime/task/TaskManager;->addTask(Lcom/zhekasmirnov/horizon/runtime/task/Task;)Lcom/zhekasmirnov/horizon/runtime/task/TaskWatcher;
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_20

    monitor-exit v1

    :cond_1f
    return-void

    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private installJarLibrary(Ljava/io/File;Ljava/io/File;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 241
    :try_start_0
    new-instance v1, Ljava/util/jar/JarFile;

    invoke-direct {v1, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    .line 242
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 243
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 244
    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_13

    .line 269
    return-void

    .line 245
    :cond_13
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    .line 246
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".class"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 247
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 249
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5b} :catch_5c

    goto :goto_c

    .line 244
    :catch_5c
    move-exception v0

    .line 269
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "failed to install jar library "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 250
    :cond_7a
    :try_start_7a
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_c

    .line 251
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 252
    invoke-virtual {v1, v0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 253
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 254
    const/16 v3, 0x2000

    new-array v3, v3, [B

    .line 256
    :goto_94
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 258
    if-gtz v5, :cond_a2

    .line 263
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 264
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto/16 :goto_c

    .line 261
    :cond_a2
    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_a6} :catch_5c

    goto :goto_94
.end method


# virtual methods
.method public compile(Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerArguments;)Z
    .registers 4

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->configured:Z

    if-nez v0, :cond_10

    .line 209
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-virtual {p1}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerArguments;->toArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->configure([Ljava/lang/String;)V

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->configured:Z

    .line 212
    :cond_10
    invoke-direct {p0}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->awaitInitialization()V

    .line 213
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->compile([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBootFiles()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 218
    iget-object v2, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->COMPONENTS:[Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$Component;

    const/4 v0, 0x0

    .line 219
    :goto_8
    array-length v3, v2

    if-lt v0, v3, :cond_c

    .line 221
    return-object v1

    .line 218
    :cond_c
    aget-object v3, v2, v0

    .line 219
    invoke-interface {v3}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$Component;->getBootFiles()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public getInitializationTask()Lcom/zhekasmirnov/horizon/runtime/task/Task;
    .registers 2

    .prologue
    .line 179
    new-instance v0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$100000000;

    invoke-direct {v0, p0}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$100000000;-><init>(Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;)V

    return-object v0
.end method

.method installLibraries(Ljava/util/List;Ljava/io/File;)V
    .registers 8
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
    .line 225
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 234
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 225
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 226
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 227
    const-string v3, ".jar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_27

    const-string v3, "zip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 228
    :cond_27
    invoke-direct {p0, v0, p2}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->installJarLibrary(Ljava/io/File;Ljava/io/File;)V

    goto :goto_6

    .line 229
    :cond_2b
    const-string v3, ".dex"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 230
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".dex"

    const-string v4, ".jar"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-direct {p0, v2, p2}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->installJarLibrary(Ljava/io/File;Ljava/io/File;)V

    .line 232
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_6

    .line 234
    :cond_4b
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unsupported file format:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
