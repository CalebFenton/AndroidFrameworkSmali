.class public final Landroid/app/search/SearchTargetEvent$Builder;
.super Ljava/lang/Object;
.source "SearchTargetEvent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/search/SearchTargetEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAction:I

.field private blacklist mFlags:I

.field private blacklist mLocation:Ljava/lang/String;

.field private blacklist mTargetIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "actionType"    # I

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/search/SearchTargetEvent$Builder;->mTargetIds:Ljava/util/List;

    .line 244
    iget-object v0, p0, Landroid/app/search/SearchTargetEvent$Builder;->mTargetIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    iput p2, p0, Landroid/app/search/SearchTargetEvent$Builder;->mAction:I

    .line 246
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/List;I)V
    .registers 3
    .param p2, "actionType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 252
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p1, p0, Landroid/app/search/SearchTargetEvent$Builder;->mTargetIds:Ljava/util/List;

    .line 254
    iput p2, p0, Landroid/app/search/SearchTargetEvent$Builder;->mAction:I

    .line 255
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/search/SearchTargetEvent;
    .registers 7

    .line 280
    new-instance v0, Landroid/app/search/SearchTargetEvent;

    iget-object v1, p0, Landroid/app/search/SearchTargetEvent$Builder;->mTargetIds:Ljava/util/List;

    iget-object v2, p0, Landroid/app/search/SearchTargetEvent$Builder;->mLocation:Ljava/lang/String;

    iget v3, p0, Landroid/app/search/SearchTargetEvent$Builder;->mAction:I

    iget v4, p0, Landroid/app/search/SearchTargetEvent$Builder;->mFlags:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/app/search/SearchTargetEvent;-><init>(Ljava/util/List;Ljava/lang/String;IILandroid/app/search/SearchTargetEvent-IA;)V

    return-object v0
.end method

.method public whitelist setFlags(I)Landroid/app/search/SearchTargetEvent$Builder;
    .registers 2
    .param p1, "flags"    # I

    .line 271
    iput p1, p0, Landroid/app/search/SearchTargetEvent$Builder;->mFlags:I

    .line 272
    return-object p0
.end method

.method public whitelist setLaunchLocation(Ljava/lang/String;)Landroid/app/search/SearchTargetEvent$Builder;
    .registers 2
    .param p1, "location"    # Ljava/lang/String;

    .line 262
    iput-object p1, p0, Landroid/app/search/SearchTargetEvent$Builder;->mLocation:Ljava/lang/String;

    .line 263
    return-object p0
.end method
