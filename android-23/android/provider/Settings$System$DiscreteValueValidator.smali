.class final Landroid/provider/Settings$System$DiscreteValueValidator;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/provider/Settings$System$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings$System;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DiscreteValueValidator"
.end annotation


# instance fields
.field private final mValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2042
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2043
    iput-object p1, p0, Landroid/provider/Settings$System$DiscreteValueValidator;->mValues:[Ljava/lang/String;

    #@5
    .line 2042
    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2048
    iget-object v0, p0, Landroid/provider/Settings$System$DiscreteValueValidator;->mValues:[Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
