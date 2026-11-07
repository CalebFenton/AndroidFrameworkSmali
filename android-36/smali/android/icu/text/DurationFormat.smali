.class public abstract Landroid/icu/text/DurationFormat;
.super Landroid/icu/text/UFormat;
.source "DurationFormat.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x1cd2d9e4c38cc84aL


# direct methods
.method protected constructor greylist-max-o <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    .line 53
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/icu/util/ULocale;)V
    .registers 2
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    .line 62
    invoke-virtual {p0, p1, p1}, Landroid/icu/text/DurationFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    .line 63
    return-void
.end method

.method public static greylist-max-o getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DurationFormat;
    .registers 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    invoke-static {p0}, Landroid/icu/impl/duration/BasicDurationFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/impl/duration/BasicDurationFormat;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract whitelist test-api format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract greylist-max-o formatDurationFrom(JJ)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract greylist-max-o formatDurationFromNow(J)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract greylist-max-o formatDurationFromNowTo(Ljava/util/Date;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist test-api parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
