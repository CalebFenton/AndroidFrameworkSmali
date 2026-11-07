.class public final Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo$Builder;
.super Ljava/lang/Object;
.source "BaseTemplateData.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mFeatureType:I

.field private final blacklist mInstanceId:I

.field private blacklist mPackageName:Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>(II)V
    .registers 3
    .param p1, "instanceId"    # I
    .param p2, "featureType"    # I

    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    iput p1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo$Builder;->mInstanceId:I

    .line 687
    iput p2, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo$Builder;->mFeatureType:I

    .line 688
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;
    .registers 6

    .line 702
    new-instance v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    iget v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo$Builder;->mInstanceId:I

    iget v2, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo$Builder;->mFeatureType:I

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo$Builder;->mPackageName:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;-><init>(IILjava/lang/CharSequence;Landroid/app/smartspace/uitemplatedata/BaseTemplateData-IA;)V

    return-object v0
.end method

.method public whitelist setPackageName(Ljava/lang/CharSequence;)Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo$Builder;
    .registers 2
    .param p1, "packageName"    # Ljava/lang/CharSequence;

    .line 695
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo$Builder;->mPackageName:Ljava/lang/CharSequence;

    .line 696
    return-object p0
.end method
