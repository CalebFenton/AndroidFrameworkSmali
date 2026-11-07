.class public final Landroid/icu/impl/DontCareFieldPosition;
.super Ljava/text/FieldPosition;
.source "DontCareFieldPosition.java"


# static fields
.field public static final blacklist INSTANCE:Landroid/icu/impl/DontCareFieldPosition;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Landroid/icu/impl/DontCareFieldPosition;

    invoke-direct {v0}, Landroid/icu/impl/DontCareFieldPosition;-><init>()V

    sput-object v0, Landroid/icu/impl/DontCareFieldPosition;->INSTANCE:Landroid/icu/impl/DontCareFieldPosition;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 32
    const v0, -0x366bb660    # -1214772.0f

    invoke-direct {p0, v0}, Ljava/text/FieldPosition;-><init>(I)V

    .line 33
    return-void
.end method


# virtual methods
.method public whitelist test-api setBeginIndex(I)V
    .registers 2
    .param p1, "i"    # I

    .line 38
    return-void
.end method

.method public whitelist test-api setEndIndex(I)V
    .registers 2
    .param p1, "i"    # I

    .line 43
    return-void
.end method
