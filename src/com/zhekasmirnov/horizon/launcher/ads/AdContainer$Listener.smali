.class public interface Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer$Listener;
.super Ljava/lang/Object;
.source "AdContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x209
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onFailedToLoad(Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onLoaded(Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhekasmirnov/horizon/launcher/ads/AdContainer;",
            ")V"
        }
    .end annotation
.end method
