.class public final enum Landroid/icu/text/MeasureFormat$FormatWidth;
.super Ljava/lang/Enum;
.source "MeasureFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MeasureFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FormatWidth"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/MeasureFormat$FormatWidth;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/MeasureFormat$FormatWidth;

.field private static final INDEX_COUNT:I = 0x3

.field public static final enum NARROW:Landroid/icu/text/MeasureFormat$FormatWidth;

.field public static final enum NUMERIC:Landroid/icu/text/MeasureFormat$FormatWidth;

.field public static final enum SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

.field public static final enum WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;


# instance fields
.field private final currencyStyle:I

.field private final listFormatterStyle:Landroid/icu/text/ListFormatter$Style;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    const/4 v6, 0x2

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v4, 0x1

    #@4
    .line 160
    new-instance v0, Landroid/icu/text/MeasureFormat$FormatWidth;

    #@6
    const-string/jumbo v1, "WIDE"

    #@9
    .line 163
    sget-object v2, Landroid/icu/text/ListFormatter$Style;->DURATION:Landroid/icu/text/ListFormatter$Style;

    #@b
    const/4 v3, 0x6

    #@c
    .line 160
    invoke-direct {v0, v1, v5, v2, v3}, Landroid/icu/text/MeasureFormat$FormatWidth;-><init>(Ljava/lang/String;ILandroid/icu/text/ListFormatter$Style;I)V

    #@f
    .line 163
    sput-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@11
    .line 165
    new-instance v0, Landroid/icu/text/MeasureFormat$FormatWidth;

    #@13
    const-string/jumbo v1, "SHORT"

    #@16
    .line 168
    sget-object v2, Landroid/icu/text/ListFormatter$Style;->DURATION_SHORT:Landroid/icu/text/ListFormatter$Style;

    #@18
    const/4 v3, 0x5

    #@19
    .line 165
    invoke-direct {v0, v1, v4, v2, v3}, Landroid/icu/text/MeasureFormat$FormatWidth;-><init>(Ljava/lang/String;ILandroid/icu/text/ListFormatter$Style;I)V

    #@1c
    .line 168
    sput-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@1e
    .line 170
    new-instance v0, Landroid/icu/text/MeasureFormat$FormatWidth;

    #@20
    const-string/jumbo v1, "NARROW"

    #@23
    .line 173
    sget-object v2, Landroid/icu/text/ListFormatter$Style;->DURATION_NARROW:Landroid/icu/text/ListFormatter$Style;

    #@25
    .line 170
    invoke-direct {v0, v1, v6, v2, v4}, Landroid/icu/text/MeasureFormat$FormatWidth;-><init>(Ljava/lang/String;ILandroid/icu/text/ListFormatter$Style;I)V

    #@28
    .line 173
    sput-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->NARROW:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@2a
    .line 175
    new-instance v0, Landroid/icu/text/MeasureFormat$FormatWidth;

    #@2c
    const-string/jumbo v1, "NUMERIC"

    #@2f
    .line 180
    sget-object v2, Landroid/icu/text/ListFormatter$Style;->DURATION_NARROW:Landroid/icu/text/ListFormatter$Style;

    #@31
    .line 175
    invoke-direct {v0, v1, v7, v2, v4}, Landroid/icu/text/MeasureFormat$FormatWidth;-><init>(Ljava/lang/String;ILandroid/icu/text/ListFormatter$Style;I)V

    #@34
    .line 180
    sput-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->NUMERIC:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@36
    .line 158
    const/4 v0, 0x4

    #@37
    new-array v0, v0, [Landroid/icu/text/MeasureFormat$FormatWidth;

    #@39
    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@3b
    aput-object v1, v0, v5

    #@3d
    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@3f
    aput-object v1, v0, v4

    #@41
    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->NARROW:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@43
    aput-object v1, v0, v6

    #@45
    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->NUMERIC:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@47
    aput-object v1, v0, v7

    #@49
    sput-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->$VALUES:[Landroid/icu/text/MeasureFormat$FormatWidth;

    #@4b
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/icu/text/ListFormatter$Style;I)V
    .locals 0
    .param p3, "style"    # Landroid/icu/text/ListFormatter$Style;
    .param p4, "currencyStyle"    # I

    #@0
    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 190
    iput-object p3, p0, Landroid/icu/text/MeasureFormat$FormatWidth;->listFormatterStyle:Landroid/icu/text/ListFormatter$Style;

    #@5
    .line 191
    iput p4, p0, Landroid/icu/text/MeasureFormat$FormatWidth;->currencyStyle:I

    #@7
    .line 189
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/MeasureFormat$FormatWidth;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 158
    const-class v0, Landroid/icu/text/MeasureFormat$FormatWidth;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/MeasureFormat$FormatWidth;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/MeasureFormat$FormatWidth;
    .locals 1

    #@0
    .prologue
    .line 158
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->$VALUES:[Landroid/icu/text/MeasureFormat$FormatWidth;

    #@2
    return-object v0
.end method


# virtual methods
.method getCurrencyStyle()I
    .locals 1

    #@0
    .prologue
    .line 199
    iget v0, p0, Landroid/icu/text/MeasureFormat$FormatWidth;->currencyStyle:I

    #@2
    return v0
.end method

.method getListFormatterStyle()Landroid/icu/text/ListFormatter$Style;
    .locals 1

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$FormatWidth;->listFormatterStyle:Landroid/icu/text/ListFormatter$Style;

    #@2
    return-object v0
.end method
