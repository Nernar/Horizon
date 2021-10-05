.class Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000000;
.super Ljava/lang/Object;
.source "Pack.java"

# interfaces
.implements Lcom/zhekasmirnov/horizon/modloader/ModContext$EventReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhekasmirnov/horizon/launcher/pack/Pack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/zhekasmirnov/horizon/launcher/pack/Pack;


# direct methods
.method constructor <init>(Lcom/zhekasmirnov/horizon/launcher/pack/Pack;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000000;->this$0:Lcom/zhekasmirnov/horizon/launcher/pack/Pack;

    return-void
.end method

.method static access$0(Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000000;)Lcom/zhekasmirnov/horizon/launcher/pack/Pack;
    .registers 2

    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000000;->this$0:Lcom/zhekasmirnov/horizon/launcher/pack/Pack;

    return-object v0
.end method


# virtual methods
.method public varargs onEvent([Lcom/zhekasmirnov/horizon/modloader/mod/Mod;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/zhekasmirnov/horizon/modloader/mod/Mod;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 196
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000000;->this$0:Lcom/zhekasmirnov/horizon/launcher/pack/Pack;

    iget-object v0, v0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->contextHolder:Lcom/zhekasmirnov/horizon/launcher/ContextHolder;

    invoke-virtual {v0}, Lcom/zhekasmirnov/horizon/launcher/ContextHolder;->getExecutionDir()Lcom/zhekasmirnov/horizon/modloader/ExecutionDirectory;

    move-result-object v1

    .line 197
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000000;->this$0:Lcom/zhekasmirnov/horizon/launcher/pack/Pack;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->access$L1000001(Lcom/zhekasmirnov/horizon/launcher/pack/Pack;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 198
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d8

    .line 200
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000000;->this$0:Lcom/zhekasmirnov/horizon/launcher/pack/Pack;

    .line 201
    const-string v2, "prepareForInjection"

    new-array v3, v8, [Ljava/lang/Class;

    :try_start_23
    const-string v4, "com.zhekasmirnov.horizon.launcher.pack.Pack"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_28
    .catch Ljava/lang/ClassNotFoundException; {:try_start_23 .. :try_end_28} :catch_e3

    move-result-object v4

    aput-object v4, v3, v7

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-static {v0, v2, v3, v4, v7}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->access$1000012(Lcom/zhekasmirnov/horizon/launcher/pack/Pack;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Z)V

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    iget-object v2, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000000;->this$0:Lcom/zhekasmirnov/horizon/launcher/pack/Pack;

    const-string v3, "getAdditionalNativeDirectories"

    new-array v4, v9, [Ljava/lang/Class;

    :try_start_3d
    const-string v5, "com.zhekasmirnov.horizon.launcher.pack.Pack"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_42
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3d .. :try_end_42} :catch_ee

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v8

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000000;->this$0:Lcom/zhekasmirnov/horizon/launcher/pack/Pack;

    aput-object v6, v5, v7

    aput-object v0, v5, v8

    invoke-static {v2, v3, v4, v5, v7}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->access$1000012(Lcom/zhekasmirnov/horizon/launcher/pack/Pack;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Z)V

    .line 204
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 205
    :goto_5c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f9

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    iget-object v2, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000000;->this$0:Lcom/zhekasmirnov/horizon/launcher/pack/Pack;

    const-string v3, "getAdditionalJavaDirectories"

    new-array v4, v9, [Ljava/lang/Class;

    :try_start_6d
    const-string v5, "com.zhekasmirnov.horizon.launcher.pack.Pack"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_72
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6d .. :try_end_72} :catch_104

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v8

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000000;->this$0:Lcom/zhekasmirnov/horizon/launcher/pack/Pack;

    aput-object v6, v5, v7

    aput-object v0, v5, v8

    invoke-static {v2, v3, v4, v5, v7}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->access$1000012(Lcom/zhekasmirnov/horizon/launcher/pack/Pack;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Z)V

    .line 209
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 210
    :goto_8c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10f

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000000;->this$0:Lcom/zhekasmirnov/horizon/launcher/pack/Pack;

    const-string v2, "getAdditionalResourceDirectories"

    new-array v3, v9, [Ljava/lang/Class;

    :try_start_9d
    const-string v4, "com.zhekasmirnov.horizon.launcher.pack.Pack"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_a2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9d .. :try_end_a2} :catch_11a

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v8

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000000;->this$0:Lcom/zhekasmirnov/horizon/launcher/pack/Pack;

    aput-object v5, v4, v7

    aput-object v0, v4, v8

    invoke-static {v1, v2, v3, v4, v7}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->access$1000012(Lcom/zhekasmirnov/horizon/launcher/pack/Pack;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Z)V

    .line 214
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 215
    :goto_bc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_125

    .line 217
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000000;->this$0:Lcom/zhekasmirnov/horizon/launcher/pack/Pack;

    .line 218
    const-string v1, "injectIntoModContext"

    new-array v2, v8, [Ljava/lang/Class;

    :try_start_c8
    const-string v3, "com.zhekasmirnov.horizon.launcher.pack.Pack"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_cd
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c8 .. :try_end_cd} :catch_133

    move-result-object v3

    aput-object v3, v2, v7

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-static {v0, v1, v2, v3, v7}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->access$1000012(Lcom/zhekasmirnov/horizon/launcher/pack/Pack;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Z)V

    return-void

    .line 197
    :cond_d8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhekasmirnov/horizon/modloader/library/LibraryDirectory;

    .line 198
    invoke-virtual {v1, v0}, Lcom/zhekasmirnov/horizon/modloader/ExecutionDirectory;->addLibraryDirectory(Lcom/zhekasmirnov/horizon/modloader/library/LibraryDirectory;)V

    goto/16 :goto_17

    .line 201
    :catch_e3
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :catch_ee
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    :cond_f9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhekasmirnov/horizon/modloader/library/LibraryDirectory;

    .line 205
    invoke-virtual {v1, v0}, Lcom/zhekasmirnov/horizon/modloader/ExecutionDirectory;->addLibraryDirectory(Lcom/zhekasmirnov/horizon/modloader/library/LibraryDirectory;)V

    goto/16 :goto_5c

    .line 208
    :catch_104
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :cond_10f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhekasmirnov/horizon/modloader/java/JavaDirectory;

    .line 210
    invoke-virtual {v1, v0}, Lcom/zhekasmirnov/horizon/modloader/ExecutionDirectory;->addJavaDirectory(Lcom/zhekasmirnov/horizon/modloader/java/JavaDirectory;)V

    goto/16 :goto_8c

    .line 213
    :catch_11a
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_125
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhekasmirnov/horizon/modloader/resource/directory/ResourceDirectory;

    .line 215
    iget-object v2, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000000;->this$0:Lcom/zhekasmirnov/horizon/launcher/pack/Pack;

    iget-object v2, v2, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->resourceManager:Lcom/zhekasmirnov/horizon/modloader/resource/ResourceManager;

    invoke-virtual {v2, v0}, Lcom/zhekasmirnov/horizon/modloader/resource/ResourceManager;->addResourceDirectory(Lcom/zhekasmirnov/horizon/modloader/resource/directory/ResourceDirectory;)V

    goto :goto_bc

    .line 218
    :catch_133
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method
