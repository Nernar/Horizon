.class Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$JarComponent;
.super Ljava/lang/Object;
.source "JavaCompilerHolder.java"

# interfaces
.implements Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$Component;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "JarComponent"
.end annotation


# instance fields
.field private final assetName:Ljava/lang/String;

.field private final assetPath:Ljava/lang/String;

.field private final this$0:Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;


# direct methods
.method constructor <init>(Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$JarComponent;->this$0:Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;

    .line 54
    iput-object p2, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$JarComponent;->assetPath:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$JarComponent;->assetName:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$JarComponent;)Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;
    .registers 2

    iget-object v0, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$JarComponent;->this$0:Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;

    return-object v0
.end method

.method private getJarFile()Ljava/io/File;
    .registers 5

    .prologue
    .line 59
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/zhekasmirnov/horizon/compiler/packages/Environment;->getExternalHorizonDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$JarComponent;->assetPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$JarComponent;->assetName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$JarComponent;->this$0:Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;

    invoke-static {v2}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->access$L1000005(Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;)Lcom/zhekasmirnov/horizon/modloader/ModContext;

    move-result-object v2

    iget-object v2, v2, Lcom/zhekasmirnov/horizon/modloader/ModContext;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/zhekasmirnov/horizon/compiler/packages/Environment;->getJavacDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$JarComponent;->assetName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 62
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 63
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 67
    :cond_4c
    :goto_4c
    return-object v0

    :cond_4d
    move-object v0, v1

    goto :goto_4c
.end method

.method private getLockFile()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 72
    :try_start_1
    iget-object v1, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$JarComponent;->this$0:Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;

    invoke-static {v1}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->access$L1000005(Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;)Lcom/zhekasmirnov/horizon/modloader/ModContext;

    move-result-object v1

    iget-object v1, v1, Lcom/zhekasmirnov/horizon/modloader/ModContext;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/zhekasmirnov/horizon/compiler/packages/Environment;->getJavacDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 73
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$JarComponent;->assetName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ".uuid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/zhekasmirnov/horizon/util/FileUtils;->readFileText(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2e} :catch_30
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_2e} :catch_34

    move-result-object v0

    .line 77
    :goto_2f
    return-object v0

    .line 73
    :catch_30
    move-exception v1

    .line 75
    check-cast v0, Ljava/lang/String;

    goto :goto_2f

    :catch_34
    move-exception v1

    .line 77
    check-cast v0, Ljava/lang/String;

    goto :goto_2f
.end method

.method private setLockFile()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$JarComponent;->this$0:Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->access$L1000005(Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;)Lcom/zhekasmirnov/horizon/modloader/ModContext;

    move-result-object v0

    iget-object v0, v0, Lcom/zhekasmirnov/horizon/modloader/ModContext;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/compiler/packages/Environment;->getJavacDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$JarComponent;->assetName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".uuid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "34b14f6e-d8d1-48af-86a7-8adcb41396ce"

    invoke-static {v1, v0}, Lcom/zhekasmirnov/horizon/util/FileUtils;->writeFileText(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2b} :catch_2c

    .line 86
    return-void

    .line 84
    :catch_2c
    move-exception v0

    .line 86
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "failed to write UUID lock for jar component: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$JarComponent;->assetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getBootFiles()Ljava/util/List;
    .registers 3
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
    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-virtual {p0}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$JarComponent;->isInstalled()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 125
    invoke-direct {p0}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$JarComponent;->getJarFile()Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_12
    return-object v0
.end method

.method public install()Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 96
    :try_start_1
    iget-object v1, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$JarComponent;->this$0:Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;

    invoke-static {v1}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->access$L1000005(Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;)Lcom/zhekasmirnov/horizon/modloader/ModContext;

    move-result-object v1

    iget-object v1, v1, Lcom/zhekasmirnov/horizon/modloader/ModContext;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 97
    invoke-direct {p0}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$JarComponent;->getJarFile()Ljava/io/File;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_50

    move-result-object v2

    .line 99
    :try_start_11
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/zhekasmirnov/horizon/compiler/packages/Environment;->getExternalHorizonDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 100
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$JarComponent;->assetPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$JarComponent;->assetName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/zhekasmirnov/horizon/util/FileUtils;->unpackAssetOrDirectory(Landroid/content/res/AssetManager;Ljava/io/File;Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_3b} :catch_48

    .line 115
    :goto_3b
    :try_start_3b
    invoke-direct {p0}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$JarComponent;->setLockFile()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_50

    .line 116
    const/4 v0, 0x1

    :goto_3f
    return v0

    .line 102
    :cond_40
    :try_start_40
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "external jar already extracted"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_48} :catch_48

    :catch_48
    move-exception v1

    .line 105
    :try_start_49
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_6c

    .line 106
    throw v1
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_50} :catch_50

    .line 116
    :catch_50
    move-exception v0

    .line 118
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "failed to install jar component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$JarComponent;->assetName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 108
    :cond_6c
    :try_start_6c
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    int-to-long v6, v0

    cmp-long v1, v4, v6

    if-nez v1, :cond_a6

    .line 109
    const-string v1, "JavaCompiler"

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "component "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$JarComponent;->assetName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " does not exist or corrupted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/zhekasmirnov/horizon/runtime/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_3f

    .line 113
    :cond_a6
    const-string v0, "JavaCompiler"

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "external component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$JarComponent;->assetName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " will be used instead of unpack"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhekasmirnov/horizon/runtime/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_d3} :catch_50

    goto/16 :goto_3b
.end method

.method public isInstalled()Z
    .registers 3

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$JarComponent;->getJarFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$JarComponent;->this$0:Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->access$L1000003(Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$JarComponent;->getLockFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1b
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "[jar component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder$JarComponent;->assetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
