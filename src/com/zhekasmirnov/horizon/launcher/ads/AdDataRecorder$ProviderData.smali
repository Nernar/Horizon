.class Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder$ProviderData;
.super Ljava/lang/Object;
.source "AdDataRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "ProviderData"
.end annotation


# instance fields
.field private adDataByType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private domain:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

.field private domainJson:Lorg/json/JSONObject;

.field private final this$0:Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder;


# direct methods
.method constructor <init>(Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder;)V
    .registers 3

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder$ProviderData;->this$0:Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder$ProviderData;->adDataByType:Ljava/util/HashMap;

    return-void
.end method

.method static access$0(Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder$ProviderData;)Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder;
    .registers 2

    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder$ProviderData;->this$0:Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder;

    return-object v0
.end method

.method static synthetic access$L1000001(Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder$ProviderData;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder$ProviderData;->adDataByType:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$L1000002(Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder$ProviderData;)Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;
    .registers 2

    iget-object v0, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder$ProviderData;->domain:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    return-object v0
.end method

.method static synthetic access$S1000001(Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder$ProviderData;Ljava/util/HashMap;)V
    .registers 2

    iput-object p1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder$ProviderData;->adDataByType:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$S1000002(Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder$ProviderData;Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;)V
    .registers 2

    iput-object p1, p0, Lcom/zhekasmirnov/horizon/launcher/ads/AdDataRecorder$ProviderData;->domain:Lcom/zhekasmirnov/horizon/launcher/ads/AdDomain;

    return-void
.end method
