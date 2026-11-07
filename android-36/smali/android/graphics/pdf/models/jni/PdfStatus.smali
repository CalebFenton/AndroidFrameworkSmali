.class public final enum Landroid/graphics/pdf/models/jni/PdfStatus;
.super Ljava/lang/Enum;
.source "PdfStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/pdf/models/jni/PdfStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/pdf/models/jni/PdfStatus;

.field public static final enum blacklist FILE_ERROR:Landroid/graphics/pdf/models/jni/PdfStatus;

.field public static final enum blacklist LOADED:Landroid/graphics/pdf/models/jni/PdfStatus;

.field public static final enum blacklist NEED_MORE_DATA:Landroid/graphics/pdf/models/jni/PdfStatus;

.field public static final enum blacklist NONE:Landroid/graphics/pdf/models/jni/PdfStatus;

.field public static final enum blacklist PAGE_BROKEN:Landroid/graphics/pdf/models/jni/PdfStatus;

.field public static final enum blacklist PDF_ERROR:Landroid/graphics/pdf/models/jni/PdfStatus;

.field public static final enum blacklist REQUIRES_PASSWORD:Landroid/graphics/pdf/models/jni/PdfStatus;


# instance fields
.field private final blacklist mStatus:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/graphics/pdf/models/jni/PdfStatus;
    .registers 7

    .line 24
    sget-object v0, Landroid/graphics/pdf/models/jni/PdfStatus;->NONE:Landroid/graphics/pdf/models/jni/PdfStatus;

    sget-object v1, Landroid/graphics/pdf/models/jni/PdfStatus;->REQUIRES_PASSWORD:Landroid/graphics/pdf/models/jni/PdfStatus;

    sget-object v2, Landroid/graphics/pdf/models/jni/PdfStatus;->LOADED:Landroid/graphics/pdf/models/jni/PdfStatus;

    sget-object v3, Landroid/graphics/pdf/models/jni/PdfStatus;->PDF_ERROR:Landroid/graphics/pdf/models/jni/PdfStatus;

    sget-object v4, Landroid/graphics/pdf/models/jni/PdfStatus;->FILE_ERROR:Landroid/graphics/pdf/models/jni/PdfStatus;

    sget-object v5, Landroid/graphics/pdf/models/jni/PdfStatus;->NEED_MORE_DATA:Landroid/graphics/pdf/models/jni/PdfStatus;

    sget-object v6, Landroid/graphics/pdf/models/jni/PdfStatus;->PAGE_BROKEN:Landroid/graphics/pdf/models/jni/PdfStatus;

    filled-new-array/range {v0 .. v6}, [Landroid/graphics/pdf/models/jni/PdfStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 25
    new-instance v0, Landroid/graphics/pdf/models/jni/PdfStatus;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/pdf/models/jni/PdfStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/pdf/models/jni/PdfStatus;->NONE:Landroid/graphics/pdf/models/jni/PdfStatus;

    new-instance v0, Landroid/graphics/pdf/models/jni/PdfStatus;

    const-string v1, "REQUIRES_PASSWORD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/pdf/models/jni/PdfStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/pdf/models/jni/PdfStatus;->REQUIRES_PASSWORD:Landroid/graphics/pdf/models/jni/PdfStatus;

    new-instance v0, Landroid/graphics/pdf/models/jni/PdfStatus;

    const-string v1, "LOADED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/pdf/models/jni/PdfStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/pdf/models/jni/PdfStatus;->LOADED:Landroid/graphics/pdf/models/jni/PdfStatus;

    new-instance v0, Landroid/graphics/pdf/models/jni/PdfStatus;

    const-string v1, "PDF_ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/pdf/models/jni/PdfStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/pdf/models/jni/PdfStatus;->PDF_ERROR:Landroid/graphics/pdf/models/jni/PdfStatus;

    new-instance v0, Landroid/graphics/pdf/models/jni/PdfStatus;

    const-string v1, "FILE_ERROR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/pdf/models/jni/PdfStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/pdf/models/jni/PdfStatus;->FILE_ERROR:Landroid/graphics/pdf/models/jni/PdfStatus;

    new-instance v0, Landroid/graphics/pdf/models/jni/PdfStatus;

    const-string v1, "NEED_MORE_DATA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/pdf/models/jni/PdfStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/pdf/models/jni/PdfStatus;->NEED_MORE_DATA:Landroid/graphics/pdf/models/jni/PdfStatus;

    .line 28
    new-instance v0, Landroid/graphics/pdf/models/jni/PdfStatus;

    const-string v1, "PAGE_BROKEN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/pdf/models/jni/PdfStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/pdf/models/jni/PdfStatus;->PAGE_BROKEN:Landroid/graphics/pdf/models/jni/PdfStatus;

    .line 24
    invoke-static {}, Landroid/graphics/pdf/models/jni/PdfStatus;->$values()[Landroid/graphics/pdf/models/jni/PdfStatus;

    move-result-object v0

    sput-object v0, Landroid/graphics/pdf/models/jni/PdfStatus;->$VALUES:[Landroid/graphics/pdf/models/jni/PdfStatus;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "status"    # I
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
            "(I)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Landroid/graphics/pdf/models/jni/PdfStatus;->mStatus:I

    .line 34
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/graphics/pdf/models/jni/PdfStatus;
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

    .line 24
    const-class v0, Landroid/graphics/pdf/models/jni/PdfStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/pdf/models/jni/PdfStatus;

    return-object v0
.end method

.method public static blacklist values()[Landroid/graphics/pdf/models/jni/PdfStatus;
    .registers 1

    .line 24
    sget-object v0, Landroid/graphics/pdf/models/jni/PdfStatus;->$VALUES:[Landroid/graphics/pdf/models/jni/PdfStatus;

    invoke-virtual {v0}, [Landroid/graphics/pdf/models/jni/PdfStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/pdf/models/jni/PdfStatus;

    return-object v0
.end method


# virtual methods
.method public final blacklist getNumber()I
    .registers 2

    .line 37
    iget v0, p0, Landroid/graphics/pdf/models/jni/PdfStatus;->mStatus:I

    return v0
.end method
