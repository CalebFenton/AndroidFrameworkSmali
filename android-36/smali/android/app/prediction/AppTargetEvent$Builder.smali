.class public final Landroid/app/prediction/AppTargetEvent$Builder;
.super Ljava/lang/Object;
.source "AppTargetEvent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/prediction/AppTargetEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAction:I

.field private blacklist mLocation:Ljava/lang/String;

.field private blacklist mTarget:Landroid/app/prediction/AppTarget;


# direct methods
.method public constructor whitelist <init>(Landroid/app/prediction/AppTarget;I)V
    .registers 3
    .param p1, "target"    # Landroid/app/prediction/AppTarget;
    .param p2, "actionType"    # I

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Landroid/app/prediction/AppTargetEvent$Builder;->mTarget:Landroid/app/prediction/AppTarget;

    .line 166
    iput p2, p0, Landroid/app/prediction/AppTargetEvent$Builder;->mAction:I

    .line 167
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/prediction/AppTargetEvent;
    .registers 6

    .line 183
    new-instance v0, Landroid/app/prediction/AppTargetEvent;

    iget-object v1, p0, Landroid/app/prediction/AppTargetEvent$Builder;->mTarget:Landroid/app/prediction/AppTarget;

    iget-object v2, p0, Landroid/app/prediction/AppTargetEvent$Builder;->mLocation:Ljava/lang/String;

    iget v3, p0, Landroid/app/prediction/AppTargetEvent$Builder;->mAction:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/prediction/AppTargetEvent;-><init>(Landroid/app/prediction/AppTarget;Ljava/lang/String;ILandroid/app/prediction/AppTargetEvent-IA;)V

    return-object v0
.end method

.method public whitelist setLaunchLocation(Ljava/lang/String;)Landroid/app/prediction/AppTargetEvent$Builder;
    .registers 2
    .param p1, "location"    # Ljava/lang/String;

    .line 174
    iput-object p1, p0, Landroid/app/prediction/AppTargetEvent$Builder;->mLocation:Ljava/lang/String;

    .line 175
    return-object p0
.end method
