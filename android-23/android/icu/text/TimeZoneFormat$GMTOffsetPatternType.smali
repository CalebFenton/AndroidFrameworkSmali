.class public final enum Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
.super Ljava/lang/Enum;
.source "TimeZoneFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TimeZoneFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GMTOffsetPatternType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field public static final enum NEGATIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field public static final enum NEGATIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field public static final enum NEGATIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field public static final enum POSITIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field public static final enum POSITIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field public static final enum POSITIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;


# instance fields
.field private _defaultPattern:Ljava/lang/String;

.field private _isPositive:Z

.field private _required:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->isPositive()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->defaultPattern()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->required()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 15

    #@0
    .prologue
    const/4 v14, 0x4

    #@1
    const/4 v13, 0x3

    #@2
    const/4 v12, 0x2

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 224
    new-instance v0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@7
    const-string/jumbo v1, "POSITIVE_HM"

    #@a
    .line 228
    const-string/jumbo v3, "+H:mm"

    #@d
    const-string/jumbo v4, "Hm"

    #@10
    .line 224
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    #@13
    .line 228
    sput-object v0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@15
    .line 229
    new-instance v3, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@17
    const-string/jumbo v4, "POSITIVE_HMS"

    #@1a
    .line 233
    const-string/jumbo v6, "+H:mm:ss"

    #@1d
    const-string/jumbo v7, "Hms"

    #@20
    move v8, v5

    #@21
    .line 229
    invoke-direct/range {v3 .. v8}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    #@24
    .line 233
    sput-object v3, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@26
    .line 234
    new-instance v6, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@28
    const-string/jumbo v7, "NEGATIVE_HM"

    #@2b
    .line 238
    const-string/jumbo v9, "-H:mm"

    #@2e
    const-string/jumbo v10, "Hm"

    #@31
    move v8, v12

    #@32
    move v11, v2

    #@33
    .line 234
    invoke-direct/range {v6 .. v11}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    #@36
    .line 238
    sput-object v6, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@38
    .line 239
    new-instance v6, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@3a
    const-string/jumbo v7, "NEGATIVE_HMS"

    #@3d
    .line 243
    const-string/jumbo v9, "-H:mm:ss"

    #@40
    const-string/jumbo v10, "Hms"

    #@43
    move v8, v13

    #@44
    move v11, v2

    #@45
    .line 239
    invoke-direct/range {v6 .. v11}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    #@48
    .line 243
    sput-object v6, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@4a
    .line 244
    new-instance v6, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@4c
    const-string/jumbo v7, "POSITIVE_H"

    #@4f
    .line 248
    const-string/jumbo v9, "+H"

    #@52
    const-string/jumbo v10, "H"

    #@55
    move v8, v14

    #@56
    move v11, v5

    #@57
    .line 244
    invoke-direct/range {v6 .. v11}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    #@5a
    .line 248
    sput-object v6, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@5c
    .line 249
    new-instance v6, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@5e
    const-string/jumbo v7, "NEGATIVE_H"

    #@61
    .line 253
    const-string/jumbo v9, "-H"

    #@64
    const-string/jumbo v10, "H"

    #@67
    .line 249
    const/4 v8, 0x5

    #@68
    move v11, v2

    #@69
    invoke-direct/range {v6 .. v11}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    #@6c
    .line 253
    sput-object v6, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@6e
    .line 223
    const/4 v0, 0x6

    #@6f
    new-array v0, v0, [Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@71
    sget-object v1, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@73
    aput-object v1, v0, v2

    #@75
    sget-object v1, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@77
    aput-object v1, v0, v5

    #@79
    sget-object v1, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@7b
    aput-object v1, v0, v12

    #@7d
    sget-object v1, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@7f
    aput-object v1, v0, v13

    #@81
    sget-object v1, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@83
    aput-object v1, v0, v14

    #@85
    sget-object v1, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@87
    const/4 v2, 0x5

    #@88
    aput-object v1, v0, v2

    #@8a
    sput-object v0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->$VALUES:[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@8c
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p3, "defaultPattern"    # Ljava/lang/String;
    .param p4, "required"    # Ljava/lang/String;
    .param p5, "isPositive"    # Z

    #@0
    .prologue
    .line 259
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 260
    iput-object p3, p0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->_defaultPattern:Ljava/lang/String;

    #@5
    .line 261
    iput-object p4, p0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->_required:Ljava/lang/String;

    #@7
    .line 262
    iput-boolean p5, p0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->_isPositive:Z

    #@9
    .line 259
    return-void
.end method

.method private defaultPattern()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 266
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->_defaultPattern:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method private isPositive()Z
    .locals 1

    #@0
    .prologue
    .line 274
    iget-boolean v0, p0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->_isPositive:Z

    #@2
    return v0
.end method

.method private required()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 270
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->_required:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 223
    const-class v0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    .locals 1

    #@0
    .prologue
    .line 223
    sget-object v0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->$VALUES:[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    #@2
    return-object v0
.end method
