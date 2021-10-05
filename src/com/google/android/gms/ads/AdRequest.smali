.class public final Lcom/google/android/gms/ads/AdRequest;
.super Ljava/lang/Object;
.source "AdRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/AdRequest$Builder;
    }
.end annotation


# static fields
.field public static final DEVICE_ID_EMULATOR:Ljava/lang/String; = "B3EEABB8EE11C2BE770B684D95219ECB"

.field public static final ERROR_CODE_INTERNAL_ERROR:I = 0x0

.field public static final ERROR_CODE_INVALID_REQUEST:I = 0x1

.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x2

.field public static final ERROR_CODE_NO_FILL:I = 0x3

.field public static final GENDER_FEMALE:I = 0x2

.field public static final GENDER_MALE:I = 0x1

.field public static final GENDER_UNKNOWN:I = 0x0

.field public static final MAX_CONTENT_URL_LENGTH:I = 0x200


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/AdRequest$Builder;)V
    .registers 2

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBirthday()Ljava/util/Date;
    .registers 2

    .prologue
    .line 80
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method

.method public final getContentUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public final getGender()I
    .registers 2

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public final getKeywords()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getLocation()Landroid/location/Location;
    .registers 2

    .prologue
    .line 100
    const/4 v0, 0x0

    check-cast v0, Landroid/location/Location;

    return-object v0
.end method

.method public final getNetworkExtras(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 105
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    return-object v0
.end method

.method public final getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public final isTestDevice(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public final zzay()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 117
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    return-object v0
.end method
