.class Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$100000001;
.super Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequestListener;
.source "AdsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation


# instance fields
.field private final this$0:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;

.field private final val$adType:Ljava/lang/String;

.field private final val$distributionNodes:[Ljava/lang/String;

.field private final val$listener:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$AdListener;


# direct methods
.method constructor <init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$AdListener;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain$AsyncAdRequestListener;-><init>()V

    iput-object p1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$100000001;->this$0:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;

    iput-object p2, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$100000001;->val$listener:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$AdListener;

    iput-object p3, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$100000001;->val$distributionNodes:[Ljava/lang/String;

    iput-object p4, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$100000001;->val$adType:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$100000001;)Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;
    .registers 2

    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$100000001;->this$0:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;

    return-object v0
.end method


# virtual methods
.method public onFailed(Ljava/util/List;Ljava/util/HashMap;)V
    .registers 6
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
    .line 180
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$100000001;->this$0:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;

    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$100000001;->val$adType:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v1, p2, v2}, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->access$1000011(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;Ljava/lang/String;Ljava/util/HashMap;[Ljava/lang/String;)V

    return-void
.end method

.method public onFulfilled(Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$100000001;->this$0:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;

    iget-object v1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$100000001;->val$listener:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$AdListener;

    iget-object v2, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$100000001;->val$distributionNodes:[Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->access$1000010(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$AdListener;Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;[Ljava/lang/String;)V

    return-void
.end method
