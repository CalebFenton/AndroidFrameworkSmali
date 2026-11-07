.class public Landroid/gesture/Prediction;
.super Ljava/lang/Object;
.source "Prediction.java"


# instance fields
.field public final whitelist name:Ljava/lang/String;

.field public whitelist score:D


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;D)V
    .registers 4
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "predictionScore"    # D

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    .line 26
    iput-wide p2, p0, Landroid/gesture/Prediction;->score:D

    .line 27
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    return-object v0
.end method
