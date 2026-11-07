.class public Landroid/net/NetworkBadging;
.super Ljava/lang/Object;
.source "NetworkBadging.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkBadging$Badging;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final greylist BADGING_4K:I = 0x1e

.field public static final greylist BADGING_HD:I = 0x14

.field public static final greylist BADGING_NONE:I = 0x0

.field public static final greylist BADGING_SD:I = 0xa


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist getWifiIcon(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p0, "signalLevel"    # I
    .param p1, "badging"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    .line 66
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0}, Landroid/net/NetworkBadging;->getWifiSignalResource(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getWifiSignalResource(I)I
    .registers 4
    .param p0, "signalLevel"    # I

    .line 81
    packed-switch p0, :pswitch_data_30

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid signal level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :pswitch_1c
    const v0, 0x108060d

    return v0

    .line 89
    :pswitch_20
    const v0, 0x108060c

    return v0

    .line 87
    :pswitch_24
    const v0, 0x108060b

    return v0

    .line 85
    :pswitch_28
    const v0, 0x108060a

    return v0

    .line 83
    :pswitch_2c
    const v0, 0x1080609

    return v0

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method
