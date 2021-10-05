.class public enum Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;
.super Ljava/lang/Enum;
.source "AdContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4029
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;",
        ">;"
    }
.end annotation


# static fields
.field private static $VALUES:[Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;

.field public static final FAILED:Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;

.field public static final INITIALIZED:Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;

.field public static final LOADED:Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;

.field public static final LOADING:Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;


# direct methods
.method static final constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v2}, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;->INITIALIZED:Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;

    new-instance v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v3}, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;->LOADING:Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;

    new-instance v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v4}, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;->LOADED:Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;

    new-instance v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v5}, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;->FAILED:Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;

    sget-object v1, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;->INITIALIZED:Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;->LOADING:Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;->LOADED:Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;->FAILED:Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;->$VALUES:[Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;
    .registers 5

    .prologue
    .line 44
    sget-object v1, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;->$VALUES:[Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;

    const/4 v0, 0x0

    :goto_3
    array-length v2, v1

    if-lt v0, v2, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_c
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    return-object v2

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static final values()[Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;->$VALUES:[Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;

    invoke-virtual {v0}, [Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$State;

    return-object v0
.end method
