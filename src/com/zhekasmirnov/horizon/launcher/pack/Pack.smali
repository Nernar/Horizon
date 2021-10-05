.class public Lcom/zhekasmirnov/horizon/launcher/pack/Pack;
.super Ljava/lang/Object;
.source "Pack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000000;,
        Lcom/zhekasmirnov/horizon/launcher/pack/Pack$MenuActivityFactory;,
        Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000001;,
        Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000002;
    }
.end annotation


# instance fields
.field private bootJavaLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhekasmirnov/horizon/modloader/java/JavaLibrary;",
            ">;"
        }
    .end annotation
.end field

.field private bootNativeLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhekasmirnov/horizon/modloader/library/LibraryDirectory;",
            ">;"
        }
    .end annotation
.end field

.field public final contextHolder:Lcom/zhekasmirnov/horizon/launcher/ContextHolder;

.field public final directory:Ljava/io/File;

.field private executableSoFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private isLaunchAborted:Z

.field public final manifest:Lcom/zhekasmirnov/horizon/launcher/pack/PackManifest;

.field private final menuActivityFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhekasmirnov/horizon/launcher/pack/Pack$MenuActivityFactory;",
            ">;"
        }
    .end annotation
.end field

.field public modContext:Lcom/zhekasmirnov/horizon/modloader/ModContext;

.field public modList:Lcom/zhekasmirnov/horizon/modloader/repo/ModList;

.field public modRepository:Lcom/zhekasmirnov/horizon/modloader/repo/storage/ModRepository;

.field public resourceManager:Lcom/zhekasmirnov/horizon/modloader/resource/ResourceManager;


# direct methods
.method public constructor <init>(Lcom/zhekasmirnov/horizon/launcher/ContextHolder;Ljava/io/File;)V
    .registers 7

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->bootJavaLibraries:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->bootNativeLibraries:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->executableSoFiles:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->isLaunchAborted:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->menuActivityFactories:Ljava/util/List;

    .line 64
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 65
    iput-object p2, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->directory:Ljava/io/File;

    .line 66
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->directory:Ljava/io/File;

    const-string v2, "manifest"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_61

    .line 68
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->directory:Ljava/io/File;

    const-string v2, "manifest.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_61

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "pack missing manifest.json: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_61
    :try_start_61
    new-instance v1, Lcom/zhekasmirnov/horizon/launcher/pack/PackManifest;

    invoke-direct {v1, v0}, Lcom/zhekasmirnov/horizon/launcher/pack/PackManifest;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->manifest:Lcom/zhekasmirnov/horizon/launcher/pack/PackManifest;

    .line 75
    iput-object p1, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->contextHolder:Lcom/zhekasmirnov/horizon/launcher/ContextHolder;
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_6a} :catch_6b
    .catch Lorg/json/JSONException; {:try_start_61 .. :try_end_6a} :catch_85

    .line 82
    return-void

    .line 75
    :catch_6b
    move-exception v0

    .line 77
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "failed to read pack manifest for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_85
    move-exception v0

    .line 79
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "failed to read pack manifest for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 82
    :cond_9f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "File is not a directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private abortIfRequired(Landroid/app/Activity;Ljava/lang/Runnable;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 376
    iget-boolean v1, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->isLaunchAborted:Z

    if-nez v1, :cond_7

    .line 377
    const/4 v0, 0x0

    .line 390
    :cond_6
    :goto_6
    return v0

    .line 379
    :cond_7
    if-eqz p2, :cond_c

    .line 380
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 382
    :cond_c
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_6

    .line 385
    new-instance v1, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000001;

    invoke-direct {v1, p0, p1}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000001;-><init>(Lcom/zhekasmirnov/horizon/launcher/pack/Pack;Landroid/app/Activity;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method static synthetic access$1000012(Lcom/zhekasmirnov/horizon/launcher/pack/Pack;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->invokeEnvironmentClassMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic access$1000020(Lcom/zhekasmirnov/horizon/launcher/pack/Pack;Landroid/app/Activity;Ljava/lang/Runnable;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->abortIfRequired(Landroid/app/Activity;Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$L1000001(Lcom/zhekasmirnov/horizon/launcher/pack/Pack;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->bootNativeLibraries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$S1000001(Lcom/zhekasmirnov/horizon/launcher/pack/Pack;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->bootNativeLibraries:Ljava/util/List;

    return-void
.end method

.method private initializeAds()V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 365
    invoke-static {}, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->getInstance()Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->getDistributionModel()Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;

    move-result-object v0

    .line 366
    const-string v1, "pack-dev"

    invoke-virtual {v0, v1}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;->removeDistributionNodes(Ljava/lang/String;)V

    .line 367
    const-string v1, "root"

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    const-string v4, "pack-dev"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;->addDistributionNode(Ljava/lang/String;DLjava/lang/String;)Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel$Node;

    .line 368
    const-string v1, "initializePackRelatedAds"

    new-array v2, v8, [Ljava/lang/Class;

    :try_start_1e
    const-string v3, "com.zhekasmirnov.horizon.launcher.pack.Pack"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1e .. :try_end_23} :catch_4c

    move-result-object v3

    aput-object v3, v2, v5

    :try_start_26
    const-string v3, "com.zhekasmirnov.horizon.launcher.ads.AdsManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_26 .. :try_end_2b} :catch_57

    move-result-object v3

    aput-object v3, v2, v6

    :try_start_2e
    const-string v3, "com.zhekasmirnov.horizon.launcher.ads.AdDistributionModel"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_33
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2e .. :try_end_33} :catch_62

    move-result-object v3

    aput-object v3, v2, v7

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p0, v3, v5

    invoke-static {}, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->getInstance()Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "pack-dev"

    invoke-virtual {v0, v4}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;->getNodeDistributionModel(Ljava/lang/String;)Lcom/zhekasmirnov/horizon/launcher/ads/AdDistributionModel;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-direct {p0, v1, v2, v3, v5}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->invokeEnvironmentClassMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Z)V

    return-void

    :catch_4c
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_57
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_62
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private initializeAssetsAndResources()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 185
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->directory:Ljava/io/File;

    const-string v2, "assets"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/launcher/env/AssetPatch;->setAssetDirectory(Ljava/lang/String;)V

    .line 186
    new-instance v0, Lcom/zhekasmirnov/horizon/modloader/resource/ResourceManager;

    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->contextHolder:Lcom/zhekasmirnov/horizon/launcher/ContextHolder;

    invoke-virtual {v1}, Lcom/zhekasmirnov/horizon/launcher/ContextHolder;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhekasmirnov/horizon/modloader/resource/ResourceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->resourceManager:Lcom/zhekasmirnov/horizon/modloader/resource/ResourceManager;

    return-void
.end method

.method private initializeBootJavaDirs()V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->modContext:Lcom/zhekasmirnov/horizon/modloader/ModContext;

    iget-object v2, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->contextHolder:Lcom/zhekasmirnov/horizon/launcher/ContextHolder;

    invoke-virtual {v2}, Lcom/zhekasmirnov/horizon/launcher/ContextHolder;->getTaskManager()Lcom/zhekasmirnov/horizon/runtime/task/TaskManager;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/zhekasmirnov/horizon/modloader/java/JavaCompilerHolder;->initializeForContext(Lcom/zhekasmirnov/horizon/modloader/ModContext;Lcom/zhekasmirnov/horizon/runtime/task/TaskManager;)V

    .line 225
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->directory:Ljava/io/File;

    const-string v2, "java"

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 226
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 227
    new-instance v0, Ljava/io/File;

    const-string v2, "order.txt"

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->loadOrderFile(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 228
    if-nez v0, :cond_3c

    .line 229
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 230
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    const/4 v0, 0x0

    .line 232
    :goto_38
    array-length v5, v4

    if-lt v0, v5, :cond_4e

    move-object v0, v2

    .line 236
    :cond_3c
    iget-object v2, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->bootJavaLibraries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 237
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 240
    :cond_47
    :goto_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_60

    :cond_4d
    return-void

    .line 230
    :cond_4e
    aget-object v5, v4, v0

    .line 231
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 232
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 237
    :cond_60
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 238
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 240
    iget-object v5, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->bootJavaLibraries:Ljava/util/List;

    new-instance v6, Lcom/zhekasmirnov/horizon/modloader/java/JavaDirectory;

    move-object v0, v1

    check-cast v0, Lcom/zhekasmirnov/horizon/modloader/mod/Mod;

    invoke-direct {v6, v0, v4}, Lcom/zhekasmirnov/horizon/modloader/java/JavaDirectory;-><init>(Lcom/zhekasmirnov/horizon/modloader/mod/Mod;Ljava/io/File;)V

    move-object v0, v1

    check-cast v0, Lcom/zhekasmirnov/horizon/modloader/ExecutionDirectory;

    iget-object v4, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->contextHolder:Lcom/zhekasmirnov/horizon/launcher/ContextHolder;

    invoke-virtual {v4}, Lcom/zhekasmirnov/horizon/launcher/ContextHolder;->getContext()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Lcom/zhekasmirnov/horizon/modloader/java/JavaDirectory;->addToExecutionDirectory(Lcom/zhekasmirnov/horizon/modloader/ExecutionDirectory;Landroid/content/Context;)Lcom/zhekasmirnov/horizon/modloader/java/JavaLibrary;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47
.end method

.method private initializeModContext()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 190
    new-instance v0, Lcom/zhekasmirnov/horizon/modloader/ModContext;

    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->contextHolder:Lcom/zhekasmirnov/horizon/launcher/ContextHolder;

    invoke-virtual {v1}, Lcom/zhekasmirnov/horizon/launcher/ContextHolder;->getContext()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->resourceManager:Lcom/zhekasmirnov/horizon/modloader/resource/ResourceManager;

    iget-object v3, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->contextHolder:Lcom/zhekasmirnov/horizon/launcher/ContextHolder;

    invoke-virtual {v3}, Lcom/zhekasmirnov/horizon/launcher/ContextHolder;->getExecutionDir()Lcom/zhekasmirnov/horizon/modloader/ExecutionDirectory;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/zhekasmirnov/horizon/modloader/ModContext;-><init>(Landroid/content/Context;Lcom/zhekasmirnov/horizon/modloader/resource/ResourceManager;Lcom/zhekasmirnov/horizon/modloader/ExecutionDirectory;)V

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->modContext:Lcom/zhekasmirnov/horizon/modloader/ModContext;

    .line 191
    new-instance v0, Lcom/zhekasmirnov/horizon/modloader/repo/storage/DirectoryRepository;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->directory:Ljava/io/File;

    const-string v3, "native_mods"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/zhekasmirnov/horizon/modloader/repo/storage/DirectoryRepository;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->modRepository:Lcom/zhekasmirnov/horizon/modloader/repo/storage/ModRepository;

    .line 192
    new-instance v0, Lcom/zhekasmirnov/horizon/modloader/repo/ModList;

    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->modContext:Lcom/zhekasmirnov/horizon/modloader/ModContext;

    iget-object v2, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->contextHolder:Lcom/zhekasmirnov/horizon/launcher/ContextHolder;

    invoke-virtual {v2}, Lcom/zhekasmirnov/horizon/launcher/ContextHolder;->getTaskManager()Lcom/zhekasmirnov/horizon/runtime/task/TaskManager;

    move-result-object v2

    iget-object v3, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->contextHolder:Lcom/zhekasmirnov/horizon/launcher/ContextHolder;

    invoke-virtual {v3}, Lcom/zhekasmirnov/horizon/launcher/ContextHolder;->getTemporaryStorage()Lcom/zhekasmirnov/horizon/modloader/repo/storage/TemporaryStorage;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/zhekasmirnov/horizon/modloader/repo/ModList;-><init>(Lcom/zhekasmirnov/horizon/modloader/ModContext;Lcom/zhekasmirnov/horizon/runtime/task/TaskManager;Lcom/zhekasmirnov/horizon/modloader/repo/storage/TemporaryStorage;)V

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->modList:Lcom/zhekasmirnov/horizon/modloader/repo/ModList;

    .line 193
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->modList:Lcom/zhekasmirnov/horizon/modloader/repo/ModList;

    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->modRepository:Lcom/zhekasmirnov/horizon/modloader/repo/storage/ModRepository;

    invoke-virtual {v0, v1}, Lcom/zhekasmirnov/horizon/modloader/repo/ModList;->addModRepository(Lcom/zhekasmirnov/horizon/modloader/repo/storage/ModRepository;)V

    .line 194
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->modContext:Lcom/zhekasmirnov/horizon/modloader/ModContext;

    const-string v1, "injectAll"

    new-instance v2, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000000;

    invoke-direct {v2, p0}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000000;-><init>(Lcom/zhekasmirnov/horizon/launcher/pack/Pack;)V

    invoke-virtual {v0, v1, v2}, Lcom/zhekasmirnov/horizon/modloader/ModContext;->addEventReceiver(Ljava/lang/String;Lcom/zhekasmirnov/horizon/modloader/ModContext$EventReceiver;)V

    return-void
.end method

.method private initializeNativeDirectories()V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->contextHolder:Lcom/zhekasmirnov/horizon/launcher/ContextHolder;

    invoke-virtual {v0}, Lcom/zhekasmirnov/horizon/launcher/ContextHolder;->getContext()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->contextHolder:Lcom/zhekasmirnov/horizon/launcher/ContextHolder;

    invoke-virtual {v1}, Lcom/zhekasmirnov/horizon/launcher/ContextHolder;->getTaskManager()Lcom/zhekasmirnov/horizon/runtime/task/TaskManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhekasmirnov/horizon/compiler/holder/CompilerHolder;->initializeForContext(Landroid/app/Activity;Lcom/zhekasmirnov/horizon/runtime/task/TaskManager;)V

    .line 248
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->directory:Ljava/io/File;

    const-string v2, "native"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 250
    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->bootNativeLibraries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 251
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v0, 0x0

    .line 253
    :goto_2e
    array-length v2, v1

    if-lt v0, v2, :cond_32

    :cond_31
    return-void

    .line 251
    :cond_32
    aget-object v2, v1, v0

    .line 252
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 253
    iget-object v3, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->bootNativeLibraries:Ljava/util/List;

    new-instance v4, Lcom/zhekasmirnov/horizon/modloader/library/LibraryDirectory;

    invoke-direct {v4, v2}, Lcom/zhekasmirnov/horizon/modloader/library/LibraryDirectory;-><init>(Ljava/io/File;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e
.end method

.method private initializeSharedObjects()Z
    .registers 13

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 135
    new-instance v4, Ljava/io/File;

    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->directory:Ljava/io/File;

    const-string v3, "so"

    invoke-direct {v4, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_17
    move v0, v2

    .line 181
    :cond_18
    :goto_18
    return v0

    .line 139
    :cond_19
    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->contextHolder:Lcom/zhekasmirnov/horizon/launcher/ContextHolder;

    invoke-virtual {v1}, Lcom/zhekasmirnov/horizon/launcher/ContextHolder;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/zhekasmirnov/horizon/compiler/packages/Environment;->getPackExecutionDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 140
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 141
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 142
    invoke-static {v5, v0}, Lcom/zhekasmirnov/horizon/util/FileUtils;->clearFileTree(Ljava/io/File;Z)V

    .line 144
    :cond_32
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 146
    :cond_35
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 147
    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->executableSoFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 148
    new-instance v1, Ljava/io/File;

    const-string v3, "order.txt"

    invoke-direct {v1, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->loadOrderFile(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    .line 149
    invoke-virtual {p0}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/zhekasmirnov/horizon/launcher/env/ClassLoaderPatch;->addNativeLibraryPath(Ljava/lang/ClassLoader;Ljava/io/File;)V

    .line 150
    invoke-static {}, Lcom/zhekasmirnov/horizon/compiler/packages/Environment;->getSupportedABIs()[Ljava/lang/String;

    move-result-object v6

    .line 151
    array-length v7, v6

    move v3, v0

    .line 153
    :goto_59
    if-ge v3, v7, :cond_18

    .line 154
    aget-object v8, v6, v3

    .line 155
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_6e

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_71

    .line 157
    :cond_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    .line 159
    :cond_71
    if-nez v1, :cond_13e

    .line 160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 161
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 162
    :goto_7c
    array-length v4, v3

    if-lt v0, v4, :cond_8e

    move-object v0, v1

    .line 165
    :goto_80
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 175
    :goto_86
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9a

    move v0, v2

    .line 178
    goto :goto_18

    .line 161
    :cond_8e
    aget-object v4, v3, v0

    .line 162
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_7c

    .line 165
    :cond_9a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_b1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_ed

    .line 168
    :cond_b1
    const-string v4, "Pack"

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "invalid so file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v10, " for "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/zhekasmirnov/horizon/runtime/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_ed
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 172
    :try_start_f2
    invoke-static {v1, v4}, Lcom/zhekasmirnov/horizon/util/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)V

    .line 173
    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->executableSoFiles:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_fa} :catch_fb

    goto :goto_86

    :catch_fb
    move-exception v1

    .line 175
    const-string v4, "Pack"

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "failed to unpack so file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v7, ": "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/zhekasmirnov/horizon/runtime/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_86

    :cond_13e
    move-object v0, v1

    goto/16 :goto_80
.end method

.method private invokeEnvironmentClassMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 261
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->manifest:Lcom/zhekasmirnov/horizon/launcher/pack/PackManifest;

    iget-object v0, v0, Lcom/zhekasmirnov/horizon/launcher/pack/PackManifest;->environmentClasses:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 268
    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_19

    return-void

    .line 261
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhekasmirnov/horizon/launcher/pack/PackManifest$ClassInfo;

    .line 262
    invoke-virtual {v0, v1}, Lcom/zhekasmirnov/horizon/launcher/pack/PackManifest$ClassInfo;->getDeclaredClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 264
    const/4 v0, 0x0

    :try_start_24
    check-cast v0, Ljava/lang/Object;

    invoke-static {v0, v3, p1, p2, p3}, Lcom/zhekasmirnov/horizon/util/ReflectionHelper;->invokeMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v0, "Pack"

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "environment class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " called method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/zhekasmirnov/horizon/runtime/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/lang/NoSuchMethodException; {:try_start_24 .. :try_end_65} :catch_66

    goto :goto_12

    :catch_66
    move-exception v0

    .line 267
    if-eqz p4, :cond_12

    .line 268
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "environment class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " missing required method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private loadBootJavaLibraries()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->bootJavaLibraries:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 298
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_37

    .line 300
    invoke-virtual {p0}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 301
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->manifest:Lcom/zhekasmirnov/horizon/launcher/pack/PackManifest;

    iget-object v0, v0, Lcom/zhekasmirnov/horizon/launcher/pack/PackManifest;->environmentClasses:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 302
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_41

    .line 304
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->manifest:Lcom/zhekasmirnov/horizon/launcher/pack/PackManifest;

    iget-object v0, v0, Lcom/zhekasmirnov/horizon/launcher/pack/PackManifest;->activities:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 305
    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4b

    return-void

    .line 297
    :cond_37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhekasmirnov/horizon/modloader/java/JavaLibrary;

    .line 298
    invoke-virtual {v0}, Lcom/zhekasmirnov/horizon/modloader/java/JavaLibrary;->initialize()V

    goto :goto_8

    .line 301
    :cond_41
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhekasmirnov/horizon/launcher/pack/PackManifest$ClassInfo;

    .line 302
    invoke-virtual {v0, v1}, Lcom/zhekasmirnov/horizon/launcher/pack/PackManifest$ClassInfo;->getDeclaredClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    goto :goto_20

    .line 304
    :cond_4b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhekasmirnov/horizon/launcher/pack/PackManifest$ClassInfo;

    .line 305
    invoke-virtual {v0, v1}, Lcom/zhekasmirnov/horizon/launcher/pack/PackManifest$ClassInfo;->getDeclaredClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    goto :goto_30
.end method

.method private loadMenuActivityFactories()V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 342
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->menuActivityFactories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 343
    const-string v0, "addMenuActivities"

    new-array v1, v3, [Ljava/lang/Class;

    :try_start_c
    const-string v2, "com.zhekasmirnov.horizon.launcher.pack.Pack"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_11} :catch_36

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->menuActivityFactories:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v5

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    iget-object v3, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->menuActivityFactories:Ljava/util/List;

    aput-object v3, v2, v5

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->invokeEnvironmentClassMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Z)V

    .line 344
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->menuActivityFactories:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 345
    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_41

    return-void

    .line 343
    :catch_36
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    :cond_41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$MenuActivityFactory;

    .line 345
    invoke-static {v0, p0}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$MenuActivityFactory;->access$S1000022(Lcom/zhekasmirnov/horizon/launcher/pack/Pack$MenuActivityFactory;Lcom/zhekasmirnov/horizon/launcher/pack/Pack;)V

    goto :goto_2f
.end method

.method private loadNativeDirectories()V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 326
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->contextHolder:Lcom/zhekasmirnov/horizon/launcher/ContextHolder;

    invoke-virtual {v0}, Lcom/zhekasmirnov/horizon/launcher/ContextHolder;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/compiler/packages/Environment;->getPackExecutionDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 327
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 328
    const-string v2, "addEnvironmentLibraries"

    new-array v3, v7, [Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v5

    :try_start_1c
    const-string v4, "java.io.File"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_21
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c .. :try_end_21} :catch_4b

    move-result-object v4

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v0, v4, v6

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->invokeEnvironmentClassMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Z)V

    move-object v0, v1

    .line 329
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 333
    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_56

    .line 336
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->contextHolder:Lcom/zhekasmirnov/horizon/launcher/ContextHolder;

    invoke-virtual {v0}, Lcom/zhekasmirnov/horizon/launcher/ContextHolder;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/compiler/holder/CompilerHolder;->getInstance(Landroid/content/Context;)Lcom/zhekasmirnov/horizon/compiler/holder/CompilerHolder;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Lcom/zhekasmirnov/horizon/compiler/holder/CompilerHolder;->clearEnvironmentLibraries()V

    .line 338
    invoke-virtual {v0, v1}, Lcom/zhekasmirnov/horizon/compiler/holder/CompilerHolder;->addEnvironmentLibraries(Ljava/util/Collection;)V

    return-void

    .line 328
    :catch_4b
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 329
    :cond_56
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 330
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_bb

    .line 331
    const-string v3, "Pack"

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "added environment library: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "  ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/zhekasmirnov/horizon/runtime/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_34

    .line 333
    :cond_bb
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "pack declared non-existing environment library: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private loadOrderFile(Ljava/io/File;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x0

    check-cast v0, Ljava/util/List;

    .line 112
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_24

    .line 114
    :try_start_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 117
    :cond_1e
    :goto_1e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 119
    if-nez v2, :cond_25

    .line 131
    :cond_24
    return-object v0

    .line 122
    :cond_25
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1e

    .line 124
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_32} :catch_33

    goto :goto_1e

    .line 116
    :catch_33
    move-exception v0

    .line 128
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private loadResourceManager()V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 322
    const-string v0, "setupResourceManager"

    new-array v1, v3, [Ljava/lang/Class;

    :try_start_6
    const-string v2, "com.zhekasmirnov.horizon.modloader.resource.ResourceManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_b} :catch_18

    move-result-object v2

    aput-object v2, v1, v4

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->resourceManager:Lcom/zhekasmirnov/horizon/modloader/resource/ResourceManager;

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->invokeEnvironmentClassMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Z)V

    return-void

    :catch_18
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private loadSharedObjects()V
    .registers 5
    .annotation runtime Landroid/annotation/SuppressLint;
        value = {
            "UnsafeDynamicallyLoadedCode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->executableSoFiles:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 316
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 311
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 312
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 313
    const-string v3, "lib"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    const-string v3, ".so"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 314
    :cond_29
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_8

    .line 316
    :cond_31
    const/4 v0, 0x3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_8
.end method


# virtual methods
.method public abortLaunch()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->isLaunchAborted:Z

    return-void
.end method

.method public buildCustomMenuLayout(Landroid/view/View;Landroid/view/View;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 458
    const-string v0, "buildCustomMenuLayout"

    new-array v1, v5, [Ljava/lang/Class;

    :try_start_7
    const-string v2, "android.view.View"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_c} :catch_21

    move-result-object v2

    aput-object v2, v1, v3

    :try_start_f
    const-string v2, "android.view.View"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_14
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_14} :catch_2c

    move-result-object v2

    aput-object v2, v1, v4

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->invokeEnvironmentClassMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Z)V

    return-void

    :catch_21
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2c
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getContextHolder()Lcom/zhekasmirnov/horizon/launcher/ContextHolder;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->contextHolder:Lcom/zhekasmirnov/horizon/launcher/ContextHolder;

    return-object v0
.end method

.method public getCustomDrawables(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 442
    const-string v1, "addCustomDrawables"

    new-array v2, v7, [Ljava/lang/Class;

    :try_start_d
    const-string v3, "com.zhekasmirnov.horizon.launcher.pack.Pack"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_12} :catch_2f

    move-result-object v3

    aput-object v3, v2, v4

    :try_start_15
    const-string v3, "java.lang.String"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_15 .. :try_end_1a} :catch_3a

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v6

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p0, v3, v4

    aput-object p1, v3, v5

    aput-object v0, v3, v6

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->invokeEnvironmentClassMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Z)V

    .line 443
    return-object v0

    .line 442
    :catch_2f
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_3a
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMenuActivityFactories()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zhekasmirnov/horizon/launcher/pack/Pack$MenuActivityFactory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 437
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->menuActivityFactories:Ljava/util/List;

    return-object v0
.end method

.method public getModContext()Lcom/zhekasmirnov/horizon/modloader/ModContext;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->modContext:Lcom/zhekasmirnov/horizon/modloader/ModContext;

    return-object v0
.end method

.method public getModList()Lcom/zhekasmirnov/horizon/modloader/repo/ModList;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->modList:Lcom/zhekasmirnov/horizon/modloader/repo/ModList;

    return-object v0
.end method

.method public getModRepository()Lcom/zhekasmirnov/horizon/modloader/repo/storage/ModRepository;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->modRepository:Lcom/zhekasmirnov/horizon/modloader/repo/storage/ModRepository;

    return-object v0
.end method

.method public getRandomCustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 8

    .prologue
    .line 447
    invoke-virtual {p0, p1}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->getCustomDrawables(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 448
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_e

    .line 449
    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 454
    :goto_d
    return-object v0

    .line 451
    :cond_e
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    .line 452
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    int-to-double v4, v1

    .line 453
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 454
    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_d
.end method

.method public getResourceManager()Lcom/zhekasmirnov/horizon/modloader/resource/ResourceManager;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->resourceManager:Lcom/zhekasmirnov/horizon/modloader/resource/ResourceManager;

    return-object v0
.end method

.method public getWorkingDirectory()Ljava/io/File;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->directory:Ljava/io/File;

    return-object v0
.end method

.method public initialize()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 276
    :try_start_0
    invoke-direct {p0}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->initializeAssetsAndResources()V

    .line 277
    invoke-direct {p0}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->initializeModContext()V

    .line 278
    invoke-direct {p0}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->initializeBootJavaDirs()V

    .line 279
    invoke-direct {p0}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->initializeSharedObjects()Z

    .line 280
    invoke-direct {p0}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->initializeNativeDirectories()V

    .line 281
    invoke-direct {p0}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->loadBootJavaLibraries()V

    .line 282
    invoke-direct {p0}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->loadMenuActivityFactories()V

    .line 283
    invoke-direct {p0}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->initializeAds()V
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_18} :catch_19

    .line 292
    return-void

    .line 283
    :catch_19
    move-exception v0

    .line 285
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 286
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v2}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 288
    :try_start_27
    invoke-static {}, Lcom/zhekasmirnov/horizon/runtime/logger/LogFileHandler;->getInstance()Lcom/zhekasmirnov/horizon/runtime/logger/LogFileHandler;

    move-result-object v2

    const-string v3, "startup.txt"

    invoke-virtual {v2, v3}, Lcom/zhekasmirnov/horizon/runtime/logger/LogFileHandler;->getNewLogFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zhekasmirnov/horizon/util/FileUtils;->writeFileText(Ljava/io/File;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_38} :catch_39

    .line 292
    :goto_38
    throw v0

    .line 288
    :catch_39
    move-exception v1

    .line 290
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_38
.end method

.method public launch(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 394
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->directory:Ljava/io/File;

    const-string v2, "assets"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_43

    .line 396
    :cond_17
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/launcher/env/AssetPatch;->setAssetDirectory(Ljava/lang/String;)V

    .line 400
    :goto_1d
    iput-boolean v3, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->isLaunchAborted:Z

    .line 401
    const-string v0, "abortLaunchIfRequired"

    new-array v1, v4, [Ljava/lang/Class;

    :try_start_23
    const-string v2, "com.zhekasmirnov.horizon.launcher.pack.Pack"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_28
    .catch Ljava/lang/ClassNotFoundException; {:try_start_23 .. :try_end_28} :catch_4b

    move-result-object v2

    aput-object v2, v1, v3

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->invokeEnvironmentClassMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Z)V

    .line 402
    invoke-direct {p0, p1, p3}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->abortIfRequired(Landroid/app/Activity;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 403
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->modList:Lcom/zhekasmirnov/horizon/modloader/repo/ModList;

    new-instance v1, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000002;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000002;-><init>(Lcom/zhekasmirnov/horizon/launcher/pack/Pack;Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p3}, Lcom/zhekasmirnov/horizon/modloader/repo/ModList;->startLaunchTask(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_42
    return-void

    .line 398
    :cond_43
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/launcher/env/AssetPatch;->setAssetDirectory(Ljava/lang/String;)V

    goto :goto_1d

    .line 401
    :catch_4b
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public load()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->loadResourceManager()V

    .line 351
    invoke-direct {p0}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->loadSharedObjects()V

    .line 352
    invoke-direct {p0}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->loadNativeDirectories()V

    return-void
.end method

.method public unload()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 356
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->modContext:Lcom/zhekasmirnov/horizon/modloader/ModContext;

    .line 357
    if-eqz v0, :cond_8

    .line 358
    invoke-virtual {v0}, Lcom/zhekasmirnov/horizon/modloader/ModContext;->clearModsAndContext()V

    :cond_8
    move-object v0, v1

    .line 360
    check-cast v0, Lcom/zhekasmirnov/horizon/modloader/ModContext;

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->modContext:Lcom/zhekasmirnov/horizon/modloader/ModContext;

    .line 361
    check-cast v1, Lcom/zhekasmirnov/horizon/modloader/resource/ResourceManager;

    iput-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->resourceManager:Lcom/zhekasmirnov/horizon/modloader/resource/ResourceManager;

    return-void
.end method
