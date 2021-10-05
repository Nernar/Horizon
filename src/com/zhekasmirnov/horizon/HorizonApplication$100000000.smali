.class Lcom/zhekasmirnov/horizon/HorizonApplication$100000000;
.super Ljava/lang/Object;
.source "HorizonApplication.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhekasmirnov/horizon/HorizonApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/zhekasmirnov/horizon/HorizonApplication;


# direct methods
.method constructor <init>(Lcom/zhekasmirnov/horizon/HorizonApplication;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zhekasmirnov/horizon/HorizonApplication$100000000;->this$0:Lcom/zhekasmirnov/horizon/HorizonApplication;

    return-void
.end method

.method static access$0(Lcom/zhekasmirnov/horizon/HorizonApplication$100000000;)Lcom/zhekasmirnov/horizon/HorizonApplication;
    .registers 2

    iget-object v0, p0, Lcom/zhekasmirnov/horizon/HorizonApplication$100000000;->this$0:Lcom/zhekasmirnov/horizon/HorizonApplication;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/HorizonApplication$100000000;->this$0:Lcom/zhekasmirnov/horizon/HorizonApplication;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/HorizonApplication;->access$L1000003(Lcom/zhekasmirnov/horizon/HorizonApplication;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 50
    :try_start_7
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/HorizonApplication$100000000;->this$0:Lcom/zhekasmirnov/horizon/HorizonApplication;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/HorizonApplication;->access$L1000003(Lcom/zhekasmirnov/horizon/HorizonApplication;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/HorizonApplication$100000000;->this$0:Lcom/zhekasmirnov/horizon/HorizonApplication;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/HorizonApplication;->access$L1000006(Lcom/zhekasmirnov/horizon/HorizonApplication;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1c

    monitor-exit v1

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/HorizonApplication$100000000;->this$0:Lcom/zhekasmirnov/horizon/HorizonApplication;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/HorizonApplication;->access$L1000003(Lcom/zhekasmirnov/horizon/HorizonApplication;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 87
    :try_start_7
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/HorizonApplication$100000000;->this$0:Lcom/zhekasmirnov/horizon/HorizonApplication;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/HorizonApplication;->access$L1000003(Lcom/zhekasmirnov/horizon/HorizonApplication;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/HorizonApplication$100000000;->this$0:Lcom/zhekasmirnov/horizon/HorizonApplication;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/HorizonApplication;->access$L1000002(Lcom/zhekasmirnov/horizon/HorizonApplication;)Ljava/util/HashSet;

    move-result-object v1

    monitor-enter v1

    .line 68
    :try_start_7
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/HorizonApplication$100000000;->this$0:Lcom/zhekasmirnov/horizon/HorizonApplication;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/HorizonApplication;->access$L1000002(Lcom/zhekasmirnov/horizon/HorizonApplication;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/HorizonApplication$100000000;->this$0:Lcom/zhekasmirnov/horizon/HorizonApplication;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/HorizonApplication;->access$L1000003(Lcom/zhekasmirnov/horizon/HorizonApplication;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 57
    :try_start_7
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/HorizonApplication$100000000;->this$0:Lcom/zhekasmirnov/horizon/HorizonApplication;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/HorizonApplication;->access$L1000006(Lcom/zhekasmirnov/horizon/HorizonApplication;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 58
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/HorizonApplication$100000000;->this$0:Lcom/zhekasmirnov/horizon/HorizonApplication;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/HorizonApplication;->access$L1000006(Lcom/zhekasmirnov/horizon/HorizonApplication;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_2f

    :cond_1c
    monitor-exit v1

    .line 61
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/HorizonApplication$100000000;->this$0:Lcom/zhekasmirnov/horizon/HorizonApplication;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/HorizonApplication;->access$L1000002(Lcom/zhekasmirnov/horizon/HorizonApplication;)Ljava/util/HashSet;

    move-result-object v1

    monitor-enter v1

    .line 62
    :try_start_24
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/HorizonApplication$100000000;->this$0:Lcom/zhekasmirnov/horizon/HorizonApplication;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/HorizonApplication;->access$L1000002(Lcom/zhekasmirnov/horizon/HorizonApplication;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_32

    monitor-exit v1

    return-void

    .line 58
    :catchall_2f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 62
    :catchall_32
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/HorizonApplication$100000000;->this$0:Lcom/zhekasmirnov/horizon/HorizonApplication;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/HorizonApplication;->access$L1000003(Lcom/zhekasmirnov/horizon/HorizonApplication;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 76
    :try_start_7
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/HorizonApplication$100000000;->this$0:Lcom/zhekasmirnov/horizon/HorizonApplication;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/HorizonApplication;->access$L1000006(Lcom/zhekasmirnov/horizon/HorizonApplication;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_23

    monitor-exit v1

    .line 78
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/HorizonApplication$100000000;->this$0:Lcom/zhekasmirnov/horizon/HorizonApplication;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/HorizonApplication;->access$L1000002(Lcom/zhekasmirnov/horizon/HorizonApplication;)Ljava/util/HashSet;

    move-result-object v1

    monitor-enter v1

    .line 79
    :try_start_18
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/HorizonApplication$100000000;->this$0:Lcom/zhekasmirnov/horizon/HorizonApplication;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/HorizonApplication;->access$L1000002(Lcom/zhekasmirnov/horizon/HorizonApplication;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_26

    monitor-exit v1

    return-void

    .line 76
    :catchall_23
    move-exception v0

    monitor-exit v1

    throw v0

    .line 79
    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0
.end method
