.class public final Landroid/icu/impl/DontCareFieldPosition;
.super Ljava/text/FieldPosition;
.source "DontCareFieldPosition.java"


# static fields
.field public static final INSTANCE:Landroid/icu/impl/DontCareFieldPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 23
    new-instance v0, Landroid/icu/impl/DontCareFieldPosition;

    #@2
    invoke-direct {v0}, Landroid/icu/impl/DontCareFieldPosition;-><init>()V

    #@5
    sput-object v0, Landroid/icu/impl/DontCareFieldPosition;->INSTANCE:Landroid/icu/impl/DontCareFieldPosition;

    #@7
    .line 21
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 28
    const v0, -0x366bb660    # -1214772.0f

    #@3
    invoke-direct {p0, v0}, Ljava/text/FieldPosition;-><init>(I)V

    #@6
    .line 25
    return-void
.end method


# virtual methods
.method public setBeginIndex(I)V
    .locals 0
    .param p1, "i"    # I

    #@0
    .prologue
    .line 32
    return-void
.end method

.method public setEndIndex(I)V
    .locals 0
    .param p1, "i"    # I

    #@0
    .prologue
    .line 37
    return-void
.end method
