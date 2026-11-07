.class abstract Landroid/icu/util/LocaleMatcher$LsrIterator;
.super Ljava/lang/Object;
.source "LocaleMatcher.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/LocaleMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "LsrIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/icu/impl/locale/LSR;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist bestDesiredIndex:I


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/util/LocaleMatcher$LsrIterator;->bestDesiredIndex:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/util/LocaleMatcher-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/util/LocaleMatcher$LsrIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist rememberCurrent(I)V
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 82
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
