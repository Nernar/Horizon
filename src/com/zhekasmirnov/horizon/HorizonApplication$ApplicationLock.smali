.class public Lcom/zhekasmirnov/horizon/HorizonApplication$ApplicationLock;
.super Ljava/lang/Object;
.source "HorizonApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhekasmirnov/horizon/HorizonApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x29
    name = "ApplicationLock"
.end annotation


# instance fields
.field private isLocked:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhekasmirnov/horizon/HorizonApplication$ApplicationLock;->isLocked:Z

    return-void
.end method


# virtual methods
.method public lock()Z
    .registers 3

    .prologue
    .line 240
    :goto_0
    iget-boolean v0, p0, Lcom/zhekasmirnov/horizon/HorizonApplication$ApplicationLock;->isLocked:Z

    if-nez v0, :cond_6

    .line 247
    const/4 v0, 0x1

    :goto_5
    return v0

    .line 242
    :cond_6
    const/16 v0, 0xa

    int-to-long v0, v0

    :try_start_9
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_0

    :catch_d
    move-exception v0

    .line 244
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public tryLock()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 230
    monitor-enter p0

    .line 231
    :try_start_2
    iget-boolean v1, p0, Lcom/zhekasmirnov/horizon/HorizonApplication$ApplicationLock;->isLocked:Z

    if-eqz v1, :cond_9

    .line 232
    const/4 v0, 0x0

    monitor-exit p0

    .line 235
    :goto_8
    return v0

    .line 234
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zhekasmirnov/horizon/HorizonApplication$ApplicationLock;->isLocked:Z

    .line 235
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_e

    goto :goto_8

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unlock()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 251
    monitor-enter p0

    .line 252
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/zhekasmirnov/horizon/HorizonApplication$ApplicationLock;->isLocked:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
