.class public Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;
.super Ljava/lang/Object;
.source "ExecuteInIsolatedServiceRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputSpec"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec$OutputType;
    }
.end annotation


# static fields
.field public static final whitelist DEFAULT:Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;

.field public static final whitelist OUTPUT_TYPE_BEST_VALUE:I = 0x1

.field public static final whitelist OUTPUT_TYPE_NULL:I


# instance fields
.field private final blacklist mMaxIntValue:I

.field private final blacklist mOutputType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 98
    new-instance v0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;-><init>(II)V

    sput-object v0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;->DEFAULT:Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;

    return-void
.end method

.method private constructor blacklist <init>(II)V
    .registers 3
    .param p1, "outputType"    # I
    .param p2, "maxIntValue"    # I

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput p2, p0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;->mMaxIntValue:I

    .line 103
    iput p1, p0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;->mOutputType:I

    .line 104
    return-void
.end method

.method public static whitelist buildBestValueSpec(I)Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;
    .registers 7
    .param p0, "maxIntValue"    # I

    .line 113
    const-class v0, Landroid/annotation/IntRange;

    const-string v3, "from"

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    move v2, p0

    .end local p0    # "maxIntValue":I
    .local v2, "maxIntValue":I
    invoke-static/range {v0 .. v5}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 114
    new-instance p0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;

    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;-><init>(II)V

    return-object p0
.end method


# virtual methods
.method public whitelist getMaxIntValue()I
    .registers 2

    .line 131
    iget v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;->mMaxIntValue:I

    return v0
.end method

.method public whitelist getOutputType()I
    .registers 2

    .line 122
    iget v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInIsolatedServiceRequest$OutputSpec;->mOutputType:I

    return v0
.end method
