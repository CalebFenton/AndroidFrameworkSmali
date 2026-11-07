.class public final enum Landroid/hardware/display/DisplayedContentSample$ColorComponent;
.super Ljava/lang/Enum;
.source "DisplayedContentSample.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayedContentSample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ColorComponent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/hardware/display/DisplayedContentSample$ColorComponent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/hardware/display/DisplayedContentSample$ColorComponent;

.field public static final enum blacklist CHANNEL0:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

.field public static final enum blacklist CHANNEL1:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

.field public static final enum blacklist CHANNEL2:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

.field public static final enum blacklist CHANNEL3:Landroid/hardware/display/DisplayedContentSample$ColorComponent;


# direct methods
.method private static synthetic blacklist $values()[Landroid/hardware/display/DisplayedContentSample$ColorComponent;
    .registers 4

    .line 60
    sget-object v0, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL0:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    sget-object v1, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL1:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    sget-object v2, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL2:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    sget-object v3, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL3:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    filled-new-array {v0, v1, v2, v3}, [Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 61
    new-instance v0, Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    const-string v1, "CHANNEL0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/display/DisplayedContentSample$ColorComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL0:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    .line 62
    new-instance v0, Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    const-string v1, "CHANNEL1"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/hardware/display/DisplayedContentSample$ColorComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL1:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    .line 63
    new-instance v0, Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    const-string v1, "CHANNEL2"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/hardware/display/DisplayedContentSample$ColorComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL2:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    .line 64
    new-instance v0, Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    const-string v1, "CHANNEL3"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/hardware/display/DisplayedContentSample$ColorComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL3:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    .line 60
    invoke-static {}, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->$values()[Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    move-result-object v0

    sput-object v0, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->$VALUES:[Landroid/hardware/display/DisplayedContentSample$ColorComponent;

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

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/hardware/display/DisplayedContentSample$ColorComponent;
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

    .line 60
    const-class v0, Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    return-object v0
.end method

.method public static blacklist values()[Landroid/hardware/display/DisplayedContentSample$ColorComponent;
    .registers 1

    .line 60
    sget-object v0, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->$VALUES:[Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    invoke-virtual {v0}, [Landroid/hardware/display/DisplayedContentSample$ColorComponent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    return-object v0
.end method
