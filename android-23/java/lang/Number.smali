.class public abstract Ljava/lang/Number;
.super Ljava/lang/Object;
.source "Number.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x79536ae2f46b1f75L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public byteValue()B
    .locals 1

    #@0
    .prologue
    .line 43
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    #@3
    move-result v0

    #@4
    int-to-byte v0, v0

    #@5
    return v0
.end method

.method public abstract doubleValue()D
.end method

.method public abstract floatValue()F
.end method

.method public abstract intValue()I
.end method

.method public abstract longValue()J
.end method

.method public shortValue()S
    .locals 1

    #@0
    .prologue
    .line 83
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    #@3
    move-result v0

    #@4
    int-to-short v0, v0

    #@5
    return v0
.end method
