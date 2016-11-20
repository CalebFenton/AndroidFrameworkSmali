.class public Landroid/gesture/Prediction;
.super Ljava/lang/Object;
.source "Prediction.java"


# instance fields
.field public final name:Ljava/lang/String;

.field public score:D


# direct methods
.method constructor <init>(Ljava/lang/String;D)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "predictionScore"    # D

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 25
    iput-object p1, p0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    #@5
    .line 26
    iput-wide p2, p0, Landroid/gesture/Prediction;->score:D

    #@7
    .line 24
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 31
    iget-object v0, p0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method
