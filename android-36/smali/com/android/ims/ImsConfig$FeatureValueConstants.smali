.class public Lcom/android/ims/ImsConfig$FeatureValueConstants;
.super Ljava/lang/Object;
.source "ImsConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeatureValueConstants"
.end annotation


# static fields
.field public static final blacklist ERROR:I = -0x1

.field public static final blacklist OFF:I = 0x0

.field public static final blacklist ON:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 773
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
