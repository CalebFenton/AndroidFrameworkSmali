.class public final Llibcore/icu/NativePluralRules;
.super Ljava/lang/Object;
.source "NativePluralRules.java"


# static fields
.field public static final FEW:I = 0x3

.field public static final MANY:I = 0x4

.field public static final ONE:I = 0x1

.field public static final OTHER:I = 0x5

.field public static final TWO:I = 0x2

.field public static final ZERO:I


# instance fields
.field private final address:J


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .param p1, "address"    # J

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    iput-wide p1, p0, Llibcore/icu/NativePluralRules;->address:J

    #@5
    .line 37
    return-void
.end method

.method private static native finalizeImpl(J)V
.end method

.method public static forLocale(Ljava/util/Locale;)Llibcore/icu/NativePluralRules;
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 50
    new-instance v0, Llibcore/icu/NativePluralRules;

    #@2
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-static {v1}, Llibcore/icu/NativePluralRules;->forLocaleImpl(Ljava/lang/String;)J

    #@9
    move-result-wide v2

    #@a
    invoke-direct {v0, v2, v3}, Llibcore/icu/NativePluralRules;-><init>(J)V

    #@d
    return-object v0
.end method

.method private static native forLocaleImpl(Ljava/lang/String;)J
.end method

.method private static native quantityForIntImpl(JI)I
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 43
    :try_start_0
    iget-wide v0, p0, Llibcore/icu/NativePluralRules;->address:J

    #@2
    invoke-static {v0, v1}, Llibcore/icu/NativePluralRules;->finalizeImpl(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 45
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@8
    .line 41
    return-void

    #@9
    .line 44
    :catchall_0
    move-exception v0

    #@a
    .line 45
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@d
    .line 44
    throw v0
.end method

.method public quantityForInt(I)I
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    .line 59
    if-gez p1, :cond_0

    #@2
    .line 60
    const/4 v0, 0x5

    #@3
    return v0

    #@4
    .line 62
    :cond_0
    iget-wide v0, p0, Llibcore/icu/NativePluralRules;->address:J

    #@6
    invoke-static {v0, v1, p1}, Llibcore/icu/NativePluralRules;->quantityForIntImpl(JI)I

    #@9
    move-result v0

    #@a
    return v0
.end method
