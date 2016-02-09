.class public final enum Landroid/icu/text/CompactDecimalFormat$CompactStyle;
.super Ljava/lang/Enum;
.source "CompactDecimalFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CompactDecimalFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompactStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/CompactDecimalFormat$CompactStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/CompactDecimalFormat$CompactStyle;

.field public static final enum LONG:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

.field public static final enum SHORT:Landroid/icu/text/CompactDecimalFormat$CompactStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 72
    new-instance v0, Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    #@4
    const-string/jumbo v1, "SHORT"

    #@7
    invoke-direct {v0, v1, v2}, Landroid/icu/text/CompactDecimalFormat$CompactStyle;-><init>(Ljava/lang/String;I)V

    #@a
    .line 76
    sput-object v0, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->SHORT:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    #@c
    .line 77
    new-instance v0, Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    #@e
    const-string/jumbo v1, "LONG"

    #@11
    invoke-direct {v0, v1, v3}, Landroid/icu/text/CompactDecimalFormat$CompactStyle;-><init>(Ljava/lang/String;I)V

    #@14
    .line 81
    sput-object v0, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->LONG:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    #@16
    .line 71
    const/4 v0, 0x2

    #@17
    new-array v0, v0, [Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    #@19
    sget-object v1, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->SHORT:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    #@1b
    aput-object v1, v0, v2

    #@1d
    sget-object v1, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->LONG:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    #@1f
    aput-object v1, v0, v3

    #@21
    sput-object v0, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->$VALUES:[Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    #@23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/CompactDecimalFormat$CompactStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 71
    const-class v0, Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/CompactDecimalFormat$CompactStyle;
    .locals 1

    #@0
    .prologue
    .line 71
    sget-object v0, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->$VALUES:[Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    #@2
    return-object v0
.end method
