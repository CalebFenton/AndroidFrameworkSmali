.class public final enum Landroid/icu/impl/CalType;
.super Ljava/lang/Enum;
.source "CalType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/CalType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/impl/CalType;

.field public static final enum blacklist BUDDHIST:Landroid/icu/impl/CalType;

.field public static final enum blacklist CHINESE:Landroid/icu/impl/CalType;

.field public static final enum blacklist COPTIC:Landroid/icu/impl/CalType;

.field public static final enum blacklist DANGI:Landroid/icu/impl/CalType;

.field public static final enum blacklist ETHIOPIC:Landroid/icu/impl/CalType;

.field public static final enum blacklist ETHIOPIC_AMETE_ALEM:Landroid/icu/impl/CalType;

.field public static final enum blacklist GREGORIAN:Landroid/icu/impl/CalType;

.field public static final enum blacklist HEBREW:Landroid/icu/impl/CalType;

.field public static final enum blacklist INDIAN:Landroid/icu/impl/CalType;

.field public static final enum blacklist ISLAMIC:Landroid/icu/impl/CalType;

.field public static final enum blacklist ISLAMIC_CIVIL:Landroid/icu/impl/CalType;

.field public static final enum blacklist ISLAMIC_RGSA:Landroid/icu/impl/CalType;

.field public static final enum blacklist ISLAMIC_TBLA:Landroid/icu/impl/CalType;

.field public static final enum blacklist ISLAMIC_UMALQURA:Landroid/icu/impl/CalType;

.field public static final enum blacklist ISO8601:Landroid/icu/impl/CalType;

.field public static final enum blacklist JAPANESE:Landroid/icu/impl/CalType;

.field public static final enum blacklist PERSIAN:Landroid/icu/impl/CalType;

.field public static final enum blacklist ROC:Landroid/icu/impl/CalType;


# instance fields
.field blacklist id:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/impl/CalType;
    .registers 19

    .line 12
    sget-object v1, Landroid/icu/impl/CalType;->GREGORIAN:Landroid/icu/impl/CalType;

    sget-object v2, Landroid/icu/impl/CalType;->ISO8601:Landroid/icu/impl/CalType;

    sget-object v3, Landroid/icu/impl/CalType;->BUDDHIST:Landroid/icu/impl/CalType;

    sget-object v4, Landroid/icu/impl/CalType;->CHINESE:Landroid/icu/impl/CalType;

    sget-object v5, Landroid/icu/impl/CalType;->COPTIC:Landroid/icu/impl/CalType;

    sget-object v6, Landroid/icu/impl/CalType;->DANGI:Landroid/icu/impl/CalType;

    sget-object v7, Landroid/icu/impl/CalType;->ETHIOPIC:Landroid/icu/impl/CalType;

    sget-object v8, Landroid/icu/impl/CalType;->ETHIOPIC_AMETE_ALEM:Landroid/icu/impl/CalType;

    sget-object v9, Landroid/icu/impl/CalType;->HEBREW:Landroid/icu/impl/CalType;

    sget-object v10, Landroid/icu/impl/CalType;->INDIAN:Landroid/icu/impl/CalType;

    sget-object v11, Landroid/icu/impl/CalType;->ISLAMIC:Landroid/icu/impl/CalType;

    sget-object v12, Landroid/icu/impl/CalType;->ISLAMIC_CIVIL:Landroid/icu/impl/CalType;

    sget-object v13, Landroid/icu/impl/CalType;->ISLAMIC_RGSA:Landroid/icu/impl/CalType;

    sget-object v14, Landroid/icu/impl/CalType;->ISLAMIC_TBLA:Landroid/icu/impl/CalType;

    sget-object v15, Landroid/icu/impl/CalType;->ISLAMIC_UMALQURA:Landroid/icu/impl/CalType;

    sget-object v16, Landroid/icu/impl/CalType;->JAPANESE:Landroid/icu/impl/CalType;

    sget-object v17, Landroid/icu/impl/CalType;->PERSIAN:Landroid/icu/impl/CalType;

    sget-object v18, Landroid/icu/impl/CalType;->ROC:Landroid/icu/impl/CalType;

    filled-new-array/range {v1 .. v18}, [Landroid/icu/impl/CalType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 13
    new-instance v0, Landroid/icu/impl/CalType;

    const/4 v1, 0x0

    const-string v2, "gregorian"

    const-string v3, "GREGORIAN"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/impl/CalType;->GREGORIAN:Landroid/icu/impl/CalType;

    .line 14
    new-instance v0, Landroid/icu/impl/CalType;

    const/4 v1, 0x1

    const-string v2, "iso8601"

    const-string v3, "ISO8601"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/impl/CalType;->ISO8601:Landroid/icu/impl/CalType;

    .line 16
    new-instance v0, Landroid/icu/impl/CalType;

    const/4 v1, 0x2

    const-string v2, "buddhist"

    const-string v3, "BUDDHIST"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/impl/CalType;->BUDDHIST:Landroid/icu/impl/CalType;

    .line 17
    new-instance v0, Landroid/icu/impl/CalType;

    const/4 v1, 0x3

    const-string v2, "chinese"

    const-string v3, "CHINESE"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/impl/CalType;->CHINESE:Landroid/icu/impl/CalType;

    .line 18
    new-instance v0, Landroid/icu/impl/CalType;

    const/4 v1, 0x4

    const-string v2, "coptic"

    const-string v3, "COPTIC"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/impl/CalType;->COPTIC:Landroid/icu/impl/CalType;

    .line 19
    new-instance v0, Landroid/icu/impl/CalType;

    const/4 v1, 0x5

    const-string v2, "dangi"

    const-string v3, "DANGI"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/impl/CalType;->DANGI:Landroid/icu/impl/CalType;

    .line 20
    new-instance v0, Landroid/icu/impl/CalType;

    const/4 v1, 0x6

    const-string v2, "ethiopic"

    const-string v3, "ETHIOPIC"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/impl/CalType;->ETHIOPIC:Landroid/icu/impl/CalType;

    .line 21
    new-instance v0, Landroid/icu/impl/CalType;

    const/4 v1, 0x7

    const-string v2, "ethiopic-amete-alem"

    const-string v3, "ETHIOPIC_AMETE_ALEM"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/impl/CalType;->ETHIOPIC_AMETE_ALEM:Landroid/icu/impl/CalType;

    .line 22
    new-instance v0, Landroid/icu/impl/CalType;

    const/16 v1, 0x8

    const-string v2, "hebrew"

    const-string v3, "HEBREW"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/impl/CalType;->HEBREW:Landroid/icu/impl/CalType;

    .line 23
    new-instance v0, Landroid/icu/impl/CalType;

    const/16 v1, 0x9

    const-string v2, "indian"

    const-string v3, "INDIAN"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/impl/CalType;->INDIAN:Landroid/icu/impl/CalType;

    .line 24
    new-instance v0, Landroid/icu/impl/CalType;

    const/16 v1, 0xa

    const-string v2, "islamic"

    const-string v3, "ISLAMIC"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/impl/CalType;->ISLAMIC:Landroid/icu/impl/CalType;

    .line 25
    new-instance v0, Landroid/icu/impl/CalType;

    const/16 v1, 0xb

    const-string v2, "islamic-civil"

    const-string v3, "ISLAMIC_CIVIL"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/impl/CalType;->ISLAMIC_CIVIL:Landroid/icu/impl/CalType;

    .line 26
    new-instance v0, Landroid/icu/impl/CalType;

    const/16 v1, 0xc

    const-string v2, "islamic-rgsa"

    const-string v3, "ISLAMIC_RGSA"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/impl/CalType;->ISLAMIC_RGSA:Landroid/icu/impl/CalType;

    .line 27
    new-instance v0, Landroid/icu/impl/CalType;

    const/16 v1, 0xd

    const-string v2, "islamic-tbla"

    const-string v3, "ISLAMIC_TBLA"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/impl/CalType;->ISLAMIC_TBLA:Landroid/icu/impl/CalType;

    .line 28
    new-instance v0, Landroid/icu/impl/CalType;

    const/16 v1, 0xe

    const-string v2, "islamic-umalqura"

    const-string v3, "ISLAMIC_UMALQURA"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/impl/CalType;->ISLAMIC_UMALQURA:Landroid/icu/impl/CalType;

    .line 29
    new-instance v0, Landroid/icu/impl/CalType;

    const/16 v1, 0xf

    const-string v2, "japanese"

    const-string v3, "JAPANESE"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/impl/CalType;->JAPANESE:Landroid/icu/impl/CalType;

    .line 30
    new-instance v0, Landroid/icu/impl/CalType;

    const/16 v1, 0x10

    const-string v2, "persian"

    const-string v3, "PERSIAN"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/impl/CalType;->PERSIAN:Landroid/icu/impl/CalType;

    .line 31
    new-instance v0, Landroid/icu/impl/CalType;

    const/16 v1, 0x11

    const-string v2, "roc"

    const-string v3, "ROC"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/impl/CalType;->ROC:Landroid/icu/impl/CalType;

    .line 12
    invoke-static {}, Landroid/icu/impl/CalType;->$values()[Landroid/icu/impl/CalType;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/CalType;->$VALUES:[Landroid/icu/impl/CalType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Landroid/icu/impl/CalType;->id:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/impl/CalType;
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

    .line 12
    const-class v0, Landroid/icu/impl/CalType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/CalType;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/impl/CalType;
    .registers 1

    .line 12
    sget-object v0, Landroid/icu/impl/CalType;->$VALUES:[Landroid/icu/impl/CalType;

    invoke-virtual {v0}, [Landroid/icu/impl/CalType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/CalType;

    return-object v0
.end method


# virtual methods
.method public blacklist getId()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Landroid/icu/impl/CalType;->id:Ljava/lang/String;

    return-object v0
.end method
