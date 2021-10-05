.class Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration$PendingInterrupt;
.super Ljava/lang/Thread;
.source "AdGlobalConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "PendingInterrupt"
.end annotation


# instance fields
.field isCancelled:Z

.field private final this$0:Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;

.field timeout:I


# direct methods
.method public constructor <init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;I)V
    .registers 4

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration$PendingInterrupt;->this$0:Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration$PendingInterrupt;->isCancelled:Z

    .line 36
    iput p2, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration$PendingInterrupt;->timeout:I

    return-void
.end method

.method static access$0(Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration$PendingInterrupt;)Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;
    .registers 2

    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration$PendingInterrupt;->this$0:Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdGlobalConfiguration$PendingInterrupt;->isCancelled:Z

    return-void
.end method
