.class final Ljava/lang/StringToReal$StringExponentPair;
.super Ljava/lang/Object;
.source "StringToReal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/StringToReal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StringExponentPair"
.end annotation


# instance fields
.field e:J

.field infinity:Z

.field negative:Z

.field s:Ljava/lang/String;

.field zero:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/StringToReal$StringExponentPair;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/StringToReal$StringExponentPair;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public specialValue()F
    .locals 1

    #@0
    .prologue
    .line 37
    iget-boolean v0, p0, Ljava/lang/StringToReal$StringExponentPair;->infinity:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 38
    iget-boolean v0, p0, Ljava/lang/StringToReal$StringExponentPair;->negative:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    #@d
    goto :goto_0

    #@e
    .line 40
    :cond_1
    iget-boolean v0, p0, Ljava/lang/StringToReal$StringExponentPair;->negative:Z

    #@10
    if-eqz v0, :cond_2

    #@12
    const/high16 v0, -0x80000000

    #@14
    :goto_1
    return v0

    #@15
    :cond_2
    const/4 v0, 0x0

    #@16
    goto :goto_1
.end method
