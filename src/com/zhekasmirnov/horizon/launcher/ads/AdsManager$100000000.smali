.class Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$100000000;
.super Lcom/zhekasmirnov/horizon/runtime/task/Task;
.source "AdsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;


# direct methods
.method constructor <init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;)V
    .registers 2

    invoke-direct {p0}, Lcom/zhekasmirnov/horizon/runtime/task/Task;-><init>()V

    iput-object p1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$100000000;->this$0:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;

    return-void
.end method

.method static access$0(Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$100000000;)Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;
    .registers 2

    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$100000000;->this$0:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;

    return-object v0
.end method


# virtual methods
.method public getLock()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$100000000;->this$0:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;

    return-object v0
.end method

.method public run()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager$100000000;->this$0:Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;

    invoke-virtual {v0}, Lcom/zhekasmirnov/horizon/launcher/ads/AdsManager;->runInitialization()V

    return-void
.end method
