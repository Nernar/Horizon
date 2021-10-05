.class Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000002;
.super Ljava/lang/Object;
.source "Pack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhekasmirnov/horizon/launcher/pack/Pack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000002"
.end annotation


# instance fields
.field private final this$0:Lcom/zhekasmirnov/horizon/launcher/pack/Pack;

.field private final val$activityName:Ljava/lang/String;

.field private final val$launchingActivity:Landroid/app/Activity;

.field private final val$onInterrupt:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/zhekasmirnov/horizon/launcher/pack/Pack;Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000002;->this$0:Lcom/zhekasmirnov/horizon/launcher/pack/Pack;

    iput-object p2, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000002;->val$launchingActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000002;->val$onInterrupt:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000002;->val$activityName:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000002;)Lcom/zhekasmirnov/horizon/launcher/pack/Pack;
    .registers 2

    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000002;->this$0:Lcom/zhekasmirnov/horizon/launcher/pack/Pack;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 405
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000002;->this$0:Lcom/zhekasmirnov/horizon/launcher/pack/Pack;

    const-string v1, "prepareForLaunch"

    new-array v2, v7, [Ljava/lang/Class;

    :try_start_9
    const-string v3, "com.zhekasmirnov.horizon.launcher.pack.Pack"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_e} :catch_f4

    move-result-object v3

    aput-object v3, v2, v6

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000002;->this$0:Lcom/zhekasmirnov/horizon/launcher/pack/Pack;

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3, v6}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->access$1000012(Lcom/zhekasmirnov/horizon/launcher/pack/Pack;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Z)V

    .line 407
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000002;->this$0:Lcom/zhekasmirnov/horizon/launcher/pack/Pack;

    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000002;->val$launchingActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000002;->val$onInterrupt:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->access$1000020(Lcom/zhekasmirnov/horizon/launcher/pack/Pack;Landroid/app/Activity;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_f3

    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000002;->this$0:Lcom/zhekasmirnov/horizon/launcher/pack/Pack;

    iget-object v0, v0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->manifest:Lcom/zhekasmirnov/horizon/launcher/pack/PackManifest;

    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000002;->val$activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zhekasmirnov/horizon/launcher/pack/PackManifest;->getActivityInfoForName(Ljava/lang/String;)Lcom/zhekasmirnov/horizon/launcher/pack/PackManifest$ClassInfo;

    move-result-object v1

    if-eqz v1, :cond_f3

    .line 408
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000002;->this$0:Lcom/zhekasmirnov/horizon/launcher/pack/Pack;

    iget-object v0, v0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->manifest:Lcom/zhekasmirnov/horizon/launcher/pack/PackManifest;

    iget-boolean v0, v0, Lcom/zhekasmirnov/horizon/launcher/pack/PackManifest;->optClearActivityStack:Z

    if-eqz v0, :cond_55

    invoke-static {}, Lcom/zhekasmirnov/horizon/HorizonApplication;->getInstance()Lcom/zhekasmirnov/horizon/HorizonApplication;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/zhekasmirnov/horizon/HorizonApplication;->getActivityStack()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 411
    :goto_4f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_ff

    .line 414
    :cond_55
    invoke-virtual {p0}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000002;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhekasmirnov/horizon/launcher/pack/PackManifest$ClassInfo;->getDeclaredClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 415
    if-eqz v0, :cond_14a

    .line 416
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "launching pack activity"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 417
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "pack activity class loader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 418
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "patched library class loader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    :try_start_93
    const-string v3, "com.zhekasmirnov.horizon.modloader.java.JavaLibrary"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_98
    .catch Ljava/lang/ClassNotFoundException; {:try_start_93 .. :try_end_98} :catch_122

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 419
    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000002;->val$launchingActivity:Landroid/app/Activity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000002;->val$launchingActivity:Landroid/app/Activity;

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 420
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000002;->this$0:Lcom/zhekasmirnov/horizon/launcher/pack/Pack;

    iget-object v1, v1, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->directory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "base.apk.zip"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_12d

    .line 422
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/launcher/env/AssetPatch;->setRootOverrideDirectory(Ljava/lang/String;)V

    .line 426
    :goto_d0
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000002;->this$0:Lcom/zhekasmirnov/horizon/launcher/pack/Pack;

    const-string v1, "onActivityStarted"

    new-array v2, v8, [Ljava/lang/Class;

    :try_start_d6
    const-string v3, "com.zhekasmirnov.horizon.launcher.pack.Pack"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_db
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d6 .. :try_end_db} :catch_134

    move-result-object v3

    aput-object v3, v2, v6

    :try_start_de
    const-string v3, "java.lang.String"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_e3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_de .. :try_end_e3} :catch_13f

    move-result-object v3

    aput-object v3, v2, v7

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000002;->this$0:Lcom/zhekasmirnov/horizon/launcher/pack/Pack;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/zhekasmirnov/horizon/launcher/pack/Pack$100000002;->val$activityName:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v0, v1, v2, v3, v6}, Lcom/zhekasmirnov/horizon/launcher/pack/Pack;->access$1000012(Lcom/zhekasmirnov/horizon/launcher/pack/Pack;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Z)V

    .line 429
    :cond_f3
    return-void

    .line 405
    :catch_f4
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 409
    :cond_ff
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 410
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 411
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "finished activity before launching pack: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4f

    .line 418
    :catch_122
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 424
    :cond_12d
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/launcher/env/AssetPatch;->setRootOverrideDirectory(Ljava/lang/String;)V

    goto :goto_d0

    .line 426
    :catch_134
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_13f
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 429
    :cond_14a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed to get launching class for some reason"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
