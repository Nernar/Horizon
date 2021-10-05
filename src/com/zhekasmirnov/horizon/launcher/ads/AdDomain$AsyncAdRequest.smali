.class public Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;
.super Ljava/lang/Object;
.source "AdDomain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x21
    name = "AsyncAdRequest"
.end annotation


# instance fields
.field public final adType:Ljava/lang/String;

.field private isActive:Z

.field private isFancy:Z

.field private listener:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequestListener;

.field private final this$0:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

.field private timeout:I


# direct methods
.method public constructor <init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;Ljava/lang/String;ZLcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequestListener;)V
    .registers 7

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;->this$0:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;->isActive:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;->timeout:I

    .line 94
    iput-object p2, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;->adType:Ljava/lang/String;

    .line 95
    iput-boolean p3, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;->isFancy:Z

    .line 96
    iput-object p4, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;->listener:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequestListener;

    .line 97
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;->this$0:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->access$L1000000(Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 98
    :try_start_18
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;->this$0:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->access$L1000000(Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_23

    monitor-exit v1

    return-void

    :catchall_23
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static access$0(Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;)Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;
    .registers 2

    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;->this$0:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    return-object v0
.end method

.method private onClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;->isActive:Z

    .line 117
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;->listener:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequestListener;

    .line 118
    if-eqz v0, :cond_a

    .line 119
    invoke-virtual {v0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequestListener;->onClosed()V

    .line 121
    :cond_a
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;->this$0:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->access$L1000000(Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 122
    :try_start_11
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;->this$0:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->access$L1000000(Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1c

    monitor-exit v1

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onFailed(Ljava/util/List;Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;->isActive:Z

    .line 128
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;->listener:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequestListener;

    .line 129
    if-eqz v0, :cond_a

    .line 130
    invoke-virtual {v0, p1, p2}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequestListener;->onFailed(Ljava/util/List;Ljava/util/HashMap;)V

    .line 132
    :cond_a
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;->this$0:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->access$L1000000(Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 133
    :try_start_11
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;->this$0:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->access$L1000000(Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1c

    monitor-exit v1

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onFulfilled(Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;->isActive:Z

    if-eqz v0, :cond_15

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;->isActive:Z

    .line 105
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;->listener:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequestListener;

    if-eqz v0, :cond_15

    .line 106
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;->this$0:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    invoke-virtual {v0, p1}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->useContainer(Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;)V

    .line 107
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;->listener:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequestListener;

    invoke-virtual {v0, p1}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequestListener;->onFulfilled(Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;)V

    .line 110
    :cond_15
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;->this$0:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->access$L1000000(Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 111
    :try_start_1c
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;->this$0:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    invoke-static {v0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;->access$L1000000(Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_27

    monitor-exit v1

    return-void

    :catchall_27
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 146
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;->isActive:Z

    if-eqz v0, :cond_b

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;->isActive:Z

    .line 148
    invoke-direct {p0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;->onClosed()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    :cond_b
    monitor-exit p0

    return-void

    .line 146
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isActive()Z
    .registers 2

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;->isActive:Z

    return v0
.end method

.method public isFancy()Z
    .registers 2

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;->isFancy:Z

    return v0
.end method

.method public declared-synchronized setFancyTimeout(I)Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequest;
    .registers 2

    .prologue
    .line 153
    monitor-enter p0

    monitor-exit p0

    return-object p0
.end method
