.class Ljava/text/DontCareFieldPosition;
.super Ljava/text/FieldPosition;
.source "DontCareFieldPosition.java"


# static fields
.field static final blacklist INSTANCE:Ljava/text/FieldPosition;


# instance fields
.field private final blacklist noDelegate:Ljava/text/Format$FieldDelegate;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Ljava/text/DontCareFieldPosition;

    invoke-direct {v0}, Ljava/text/DontCareFieldPosition;-><init>()V

    sput-object v0, Ljava/text/DontCareFieldPosition;->INSTANCE:Ljava/text/FieldPosition;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/text/FieldPosition;-><init>(I)V

    .line 37
    new-instance v0, Ljava/text/DontCareFieldPosition$1;

    invoke-direct {v0, p0}, Ljava/text/DontCareFieldPosition$1;-><init>(Ljava/text/DontCareFieldPosition;)V

    iput-object v0, p0, Ljava/text/DontCareFieldPosition;->noDelegate:Ljava/text/Format$FieldDelegate;

    .line 48
    return-void
.end method


# virtual methods
.method blacklist getFieldDelegate()Ljava/text/Format$FieldDelegate;
    .registers 2

    .line 51
    iget-object v0, p0, Ljava/text/DontCareFieldPosition;->noDelegate:Ljava/text/Format$FieldDelegate;

    return-object v0
.end method
