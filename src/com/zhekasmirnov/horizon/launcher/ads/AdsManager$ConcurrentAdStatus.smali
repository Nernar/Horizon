.class Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$ConcurrentAdStatus;
.super Ljava/lang/Object;
.source "AdsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "ConcurrentAdStatus"
.end annotation


# instance fields
.field failedCount:I

.field isFulfilled:Z

.field private final this$0:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;


# direct methods
.method constructor <init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$ConcurrentAdStatus;->this$0:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;

    .line 194
    iput-boolean v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$ConcurrentAdStatus;->isFulfilled:Z

    .line 195
    iput v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$ConcurrentAdStatus;->failedCount:I

    return-void
.end method

.method static access$0(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$ConcurrentAdStatus;)Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;
    .registers 2

    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$ConcurrentAdStatus;->this$0:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;

    return-object v0
.end method
