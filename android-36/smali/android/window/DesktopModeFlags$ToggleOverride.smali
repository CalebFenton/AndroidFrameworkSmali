.class public final enum Landroid/window/DesktopModeFlags$ToggleOverride;
.super Ljava/lang/Enum;
.source "DesktopModeFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/DesktopModeFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ToggleOverride"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/window/DesktopModeFlags$ToggleOverride;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/window/DesktopModeFlags$ToggleOverride;

.field public static final enum blacklist OVERRIDE_OFF:Landroid/window/DesktopModeFlags$ToggleOverride;

.field public static final enum blacklist OVERRIDE_ON:Landroid/window/DesktopModeFlags$ToggleOverride;

.field public static final enum blacklist OVERRIDE_UNSET:Landroid/window/DesktopModeFlags$ToggleOverride;


# direct methods
.method private static synthetic blacklist $values()[Landroid/window/DesktopModeFlags$ToggleOverride;
    .registers 3

    .line 277
    sget-object v0, Landroid/window/DesktopModeFlags$ToggleOverride;->OVERRIDE_UNSET:Landroid/window/DesktopModeFlags$ToggleOverride;

    sget-object v1, Landroid/window/DesktopModeFlags$ToggleOverride;->OVERRIDE_OFF:Landroid/window/DesktopModeFlags$ToggleOverride;

    sget-object v2, Landroid/window/DesktopModeFlags$ToggleOverride;->OVERRIDE_ON:Landroid/window/DesktopModeFlags$ToggleOverride;

    filled-new-array {v0, v1, v2}, [Landroid/window/DesktopModeFlags$ToggleOverride;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 278
    new-instance v0, Landroid/window/DesktopModeFlags$ToggleOverride;

    const-string v1, "OVERRIDE_UNSET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/window/DesktopModeFlags$ToggleOverride;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/window/DesktopModeFlags$ToggleOverride;->OVERRIDE_UNSET:Landroid/window/DesktopModeFlags$ToggleOverride;

    .line 279
    new-instance v0, Landroid/window/DesktopModeFlags$ToggleOverride;

    const-string v1, "OVERRIDE_OFF"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/window/DesktopModeFlags$ToggleOverride;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/window/DesktopModeFlags$ToggleOverride;->OVERRIDE_OFF:Landroid/window/DesktopModeFlags$ToggleOverride;

    .line 280
    new-instance v0, Landroid/window/DesktopModeFlags$ToggleOverride;

    const-string v1, "OVERRIDE_ON"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/window/DesktopModeFlags$ToggleOverride;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/window/DesktopModeFlags$ToggleOverride;->OVERRIDE_ON:Landroid/window/DesktopModeFlags$ToggleOverride;

    .line 277
    invoke-static {}, Landroid/window/DesktopModeFlags$ToggleOverride;->$values()[Landroid/window/DesktopModeFlags$ToggleOverride;

    move-result-object v0

    sput-object v0, Landroid/window/DesktopModeFlags$ToggleOverride;->$VALUES:[Landroid/window/DesktopModeFlags$ToggleOverride;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 277
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist fromSetting(ILandroid/window/DesktopModeFlags$ToggleOverride;)Landroid/window/DesktopModeFlags$ToggleOverride;
    .registers 3
    .param p0, "setting"    # I
    .param p1, "fallback"    # Landroid/window/DesktopModeFlags$ToggleOverride;

    .line 293
    packed-switch p0, :pswitch_data_e

    .line 297
    move-object v0, p1

    goto :goto_d

    .line 294
    :pswitch_5
    sget-object v0, Landroid/window/DesktopModeFlags$ToggleOverride;->OVERRIDE_ON:Landroid/window/DesktopModeFlags$ToggleOverride;

    goto :goto_d

    .line 295
    :pswitch_8
    sget-object v0, Landroid/window/DesktopModeFlags$ToggleOverride;->OVERRIDE_OFF:Landroid/window/DesktopModeFlags$ToggleOverride;

    goto :goto_d

    .line 296
    :pswitch_b
    sget-object v0, Landroid/window/DesktopModeFlags$ToggleOverride;->OVERRIDE_UNSET:Landroid/window/DesktopModeFlags$ToggleOverride;

    .line 293
    :goto_d
    return-object v0

    :pswitch_data_e
    .packed-switch -0x1
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/window/DesktopModeFlags$ToggleOverride;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 277
    const-class v0, Landroid/window/DesktopModeFlags$ToggleOverride;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/window/DesktopModeFlags$ToggleOverride;

    return-object v0
.end method

.method public static blacklist values()[Landroid/window/DesktopModeFlags$ToggleOverride;
    .registers 1

    .line 277
    sget-object v0, Landroid/window/DesktopModeFlags$ToggleOverride;->$VALUES:[Landroid/window/DesktopModeFlags$ToggleOverride;

    invoke-virtual {v0}, [Landroid/window/DesktopModeFlags$ToggleOverride;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/window/DesktopModeFlags$ToggleOverride;

    return-object v0
.end method


# virtual methods
.method public blacklist getSetting()I
    .registers 3

    .line 284
    invoke-virtual {p0}, Landroid/window/DesktopModeFlags$ToggleOverride;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 285
    :pswitch_e
    const/4 v0, 0x1

    goto :goto_13

    .line 286
    :pswitch_10
    const/4 v0, 0x0

    goto :goto_13

    .line 287
    :pswitch_12
    const/4 v0, -0x1

    .line 284
    :goto_13
    return v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_12
        :pswitch_10
        :pswitch_e
    .end packed-switch
.end method
