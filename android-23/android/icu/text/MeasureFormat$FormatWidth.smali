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

.field public static final enum NARROW:Landroid/icu/text/MeasureFormat$FormatWidth;

.field public static final enum NUMERIC:Landroid/icu/text/MeasureFormat$FormatWidth;

.field public static final enum SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

.field public static final enum WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;


# instance fields
.field private final currencyStyle:I

.field private final listFormatterStyle:Landroid/icu/text/ListFormatter$Style;

.field final resourceKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x3

    #@1
    const/4 v10, 0x2

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v9, 0x1

    #@4
    .line 165
    new-instance v0, Landroid/icu/text/MeasureFormat$FormatWidth;

    #@6
    const-string/jumbo v1, "WIDE"

    #@9
    .line 170
    const-string/jumbo v3, "units"

    #@c
    sget-object v4, Landroid/icu/text/ListFormatter$Style;->DURATION:Landroid/icu/text/ListFormatter$Style;

    #@e
    const/4 v5, 0x6

    #@f
    .line 165
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MeasureFormat$FormatWidth;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/icu/text/ListFormatter$Style;I)V

    #@12
    .line 170
    sput-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@14
    .line 172
    new-instance v3, Landroid/icu/text/MeasureFormat$FormatWidth;

    #@16
    const-string/jumbo v4, "SHORT"

    #@19
    .line 177
    const-string/jumbo v6, "unitsShort"

    #@1c
    sget-object v7, Landroid/icu/text/ListFormatter$Style;->DURATION_SHORT:Landroid/icu/text/ListFormatter$Style;

    #@1e
    const/4 v8, 0x5

    #@1f
    move v5, v9

    #@20
    .line 172
    invoke-direct/range {v3 .. v8}, Landroid/icu/text/MeasureFormat$FormatWidth;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/icu/text/ListFormatter$Style;I)V

    #@23
    .line 177
    sput-object v3, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@25
    .line 179
    new-instance v3, Landroid/icu/text/MeasureFormat$FormatWidth;

    #@27
    const-string/jumbo v4, "NARROW"

    #@2a
    .line 184
    const-string/jumbo v6, "unitsNarrow"

    #@2d
    sget-object v7, Landroid/icu/text/ListFormatter$Style;->DURATION_NARROW:Landroid/icu/text/ListFormatter$Style;

    #@2f
    move v5, v10

    #@30
    move v8, v9

    #@31
    .line 179
    invoke-direct/range {v3 .. v8}, Landroid/icu/text/MeasureFormat$FormatWidth;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/icu/text/ListFormatter$Style;I)V

    #@34
    .line 184
    sput-object v3, Landroid/icu/text/MeasureFormat$FormatWidth;->NARROW:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@36
    .line 186
    new-instance v3, Landroid/icu/text/MeasureFormat$FormatWidth;

    #@38
    const-string/jumbo v4, "NUMERIC"

    #@3b
    .line 193
    const-string/jumbo v6, "unitsNarrow"

    #@3e
    sget-object v7, Landroid/icu/text/ListFormatter$Style;->DURATION_NARROW:Landroid/icu/text/ListFormatter$Style;

    #@40
    move v5, v11

    #@41
    move v8, v9

    #@42
    .line 186
    invoke-direct/range {v3 .. v8}, Landroid/icu/text/MeasureFormat$FormatWidth;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/icu/text/ListFormatter$Style;I)V

    #@45
    .line 193
    sput-object v3, Landroid/icu/text/MeasureFormat$FormatWidth;->NUMERIC:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@47
    .line 163
    const/4 v0, 0x4

    #@48
    new-array v0, v0, [Landroid/icu/text/MeasureFormat$FormatWidth;

    #@4a
    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@4c
    aput-object v1, v0, v2

    #@4e
    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@50
    aput-object v1, v0, v9

    #@52
    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->NARROW:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@54
    aput-object v1, v0, v10

    #@56
    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->NUMERIC:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@58
    aput-object v1, v0, v11

    #@5a
    sput-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->$VALUES:[Landroid/icu/text/MeasureFormat$FormatWidth;

    #@5c
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Landroid/icu/text/ListFormatter$Style;I)V
    .locals 0
    .param p3, "resourceKey"    # Ljava/lang/String;
    .param p4, "style"    # Landroid/icu/text/ListFormatter$Style;
    .param p5, "currencyStyle"    # I

    #@0
    .prologue
    .line 202
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 203
    iput-object p3, p0, Landroid/icu/text/MeasureFormat$FormatWidth;->resourceKey:Ljava/lang/String;

    #@5
    .line 204
    iput-object p4, p0, Landroid/icu/text/MeasureFormat$FormatWidth;->listFormatterStyle:Landroid/icu/text/ListFormatter$Style;

    #@7
    .line 205
    iput p5, p0, Landroid/icu/text/MeasureFormat$FormatWidth;->currencyStyle:I

    #@9
    .line 202
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/MeasureFormat$FormatWidth;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 163
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
    .line 163
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->$VALUES:[Landroid/icu/text/MeasureFormat$FormatWidth;

    #@2
    return-object v0
.end method


# virtual methods
.method getCurrencyStyle()I
    .locals 1

    #@0
    .prologue
    .line 213
    iget v0, p0, Landroid/icu/text/MeasureFormat$FormatWidth;->currencyStyle:I

    #@2
    return v0
.end method

.method getListFormatterStyle()Landroid/icu/text/ListFormatter$Style;
    .locals 1

    #@0
    .prologue
    .line 209
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$FormatWidth;->listFormatterStyle:Landroid/icu/text/ListFormatter$Style;

    #@2
    return-object v0
.end method
