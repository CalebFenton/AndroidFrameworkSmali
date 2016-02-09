.class public abstract Landroid/icu/text/DurationFormat;
.super Landroid/icu/text/UFormat;
.source "DurationFormat.java"


# static fields
.field private static final serialVersionUID:J = -0x1cd2d9e4c38cc84aL


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    #@3
    return-void
.end method

.method protected constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 0
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    #@3
    .line 51
    invoke-virtual {p0, p1, p1}, Landroid/icu/text/DurationFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    #@6
    .line 50
    return-void
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DurationFormat;
    .locals 1
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 31
    invoke-static {p0}, Landroid/icu/impl/duration/BasicDurationFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/impl/duration/BasicDurationFormat;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method


# virtual methods
.method public abstract format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public abstract formatDurationFrom(JJ)Ljava/lang/String;
.end method

.method public abstract formatDurationFromNow(J)Ljava/lang/String;
.end method

.method public abstract formatDurationFromNowTo(Ljava/util/Date;)Ljava/lang/String;
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 71
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
