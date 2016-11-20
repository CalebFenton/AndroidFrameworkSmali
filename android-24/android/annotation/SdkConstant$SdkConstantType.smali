.class public final enum Landroid/annotation/SdkConstant$SdkConstantType;
.super Ljava/lang/Enum;
.source "SdkConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/annotation/SdkConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SdkConstantType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/annotation/SdkConstant$SdkConstantType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/annotation/SdkConstant$SdkConstantType;

.field public static final enum ACTIVITY_INTENT_ACTION:Landroid/annotation/SdkConstant$SdkConstantType;

.field public static final enum BROADCAST_INTENT_ACTION:Landroid/annotation/SdkConstant$SdkConstantType;

.field public static final enum FEATURE:Landroid/annotation/SdkConstant$SdkConstantType;

.field public static final enum INTENT_CATEGORY:Landroid/annotation/SdkConstant$SdkConstantType;

.field public static final enum SERVICE_ACTION:Landroid/annotation/SdkConstant$SdkConstantType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 32
    new-instance v0, Landroid/annotation/SdkConstant$SdkConstantType;

    #@7
    const-string/jumbo v1, "ACTIVITY_INTENT_ACTION"

    #@a
    invoke-direct {v0, v1, v2}, Landroid/annotation/SdkConstant$SdkConstantType;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Landroid/annotation/SdkConstant$SdkConstantType;->ACTIVITY_INTENT_ACTION:Landroid/annotation/SdkConstant$SdkConstantType;

    #@f
    new-instance v0, Landroid/annotation/SdkConstant$SdkConstantType;

    #@11
    const-string/jumbo v1, "BROADCAST_INTENT_ACTION"

    #@14
    invoke-direct {v0, v1, v3}, Landroid/annotation/SdkConstant$SdkConstantType;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Landroid/annotation/SdkConstant$SdkConstantType;->BROADCAST_INTENT_ACTION:Landroid/annotation/SdkConstant$SdkConstantType;

    #@19
    new-instance v0, Landroid/annotation/SdkConstant$SdkConstantType;

    #@1b
    const-string/jumbo v1, "SERVICE_ACTION"

    #@1e
    invoke-direct {v0, v1, v4}, Landroid/annotation/SdkConstant$SdkConstantType;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Landroid/annotation/SdkConstant$SdkConstantType;->SERVICE_ACTION:Landroid/annotation/SdkConstant$SdkConstantType;

    #@23
    new-instance v0, Landroid/annotation/SdkConstant$SdkConstantType;

    #@25
    const-string/jumbo v1, "INTENT_CATEGORY"

    #@28
    invoke-direct {v0, v1, v5}, Landroid/annotation/SdkConstant$SdkConstantType;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Landroid/annotation/SdkConstant$SdkConstantType;->INTENT_CATEGORY:Landroid/annotation/SdkConstant$SdkConstantType;

    #@2d
    new-instance v0, Landroid/annotation/SdkConstant$SdkConstantType;

    #@2f
    const-string/jumbo v1, "FEATURE"

    #@32
    invoke-direct {v0, v1, v6}, Landroid/annotation/SdkConstant$SdkConstantType;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Landroid/annotation/SdkConstant$SdkConstantType;->FEATURE:Landroid/annotation/SdkConstant$SdkConstantType;

    #@37
    .line 31
    const/4 v0, 0x5

    #@38
    new-array v0, v0, [Landroid/annotation/SdkConstant$SdkConstantType;

    #@3a
    sget-object v1, Landroid/annotation/SdkConstant$SdkConstantType;->ACTIVITY_INTENT_ACTION:Landroid/annotation/SdkConstant$SdkConstantType;

    #@3c
    aput-object v1, v0, v2

    #@3e
    sget-object v1, Landroid/annotation/SdkConstant$SdkConstantType;->BROADCAST_INTENT_ACTION:Landroid/annotation/SdkConstant$SdkConstantType;

    #@40
    aput-object v1, v0, v3

    #@42
    sget-object v1, Landroid/annotation/SdkConstant$SdkConstantType;->SERVICE_ACTION:Landroid/annotation/SdkConstant$SdkConstantType;

    #@44
    aput-object v1, v0, v4

    #@46
    sget-object v1, Landroid/annotation/SdkConstant$SdkConstantType;->INTENT_CATEGORY:Landroid/annotation/SdkConstant$SdkConstantType;

    #@48
    aput-object v1, v0, v5

    #@4a
    sget-object v1, Landroid/annotation/SdkConstant$SdkConstantType;->FEATURE:Landroid/annotation/SdkConstant$SdkConstantType;

    #@4c
    aput-object v1, v0, v6

    #@4e
    sput-object v0, Landroid/annotation/SdkConstant$SdkConstantType;->$VALUES:[Landroid/annotation/SdkConstant$SdkConstantType;

    #@50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/annotation/SdkConstant$SdkConstantType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 31
    const-class v0, Landroid/annotation/SdkConstant$SdkConstantType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/annotation/SdkConstant$SdkConstantType;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/annotation/SdkConstant$SdkConstantType;
    .locals 1

    #@0
    .prologue
    .line 31
    sget-object v0, Landroid/annotation/SdkConstant$SdkConstantType;->$VALUES:[Landroid/annotation/SdkConstant$SdkConstantType;

    #@2
    return-object v0
.end method
