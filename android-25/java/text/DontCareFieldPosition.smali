.class Ljava/text/DontCareFieldPosition;
.super Ljava/text/FieldPosition;
.source "DontCareFieldPosition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/DontCareFieldPosition$1;
    }
.end annotation


# static fields
.field static final INSTANCE:Ljava/text/FieldPosition;


# instance fields
.field private final noDelegate:Ljava/text/Format$FieldDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 35
    new-instance v0, Ljava/text/DontCareFieldPosition;

    #@2
    invoke-direct {v0}, Ljava/text/DontCareFieldPosition;-><init>()V

    #@5
    sput-object v0, Ljava/text/DontCareFieldPosition;->INSTANCE:Ljava/text/FieldPosition;

    #@7
    .line 33
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 47
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/text/FieldPosition;-><init>(I)V

    #@4
    .line 37
    new-instance v0, Ljava/text/DontCareFieldPosition$1;

    #@6
    invoke-direct {v0, p0}, Ljava/text/DontCareFieldPosition$1;-><init>(Ljava/text/DontCareFieldPosition;)V

    #@9
    iput-object v0, p0, Ljava/text/DontCareFieldPosition;->noDelegate:Ljava/text/Format$FieldDelegate;

    #@b
    .line 46
    return-void
.end method


# virtual methods
.method getFieldDelegate()Ljava/text/Format$FieldDelegate;
    .locals 1

    #@0
    .prologue
    .line 51
    iget-object v0, p0, Ljava/text/DontCareFieldPosition;->noDelegate:Ljava/text/Format$FieldDelegate;

    #@2
    return-object v0
.end method
