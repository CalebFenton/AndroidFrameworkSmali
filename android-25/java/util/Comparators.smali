.class Ljava/util/Comparators;
.super Ljava/lang/Object;
.source "Comparators.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Comparators$NaturalOrderComparator;,
        Ljava/util/Comparators$NullComparator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    new-instance v0, Ljava/lang/AssertionError;

    #@5
    const-string/jumbo v1, "no instances"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@b
    throw v0
.end method
