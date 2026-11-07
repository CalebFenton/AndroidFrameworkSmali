.class public final Landroid/app/DirectAction$Builder;
.super Ljava/lang/Object;
.source "DirectAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DirectAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mId:Ljava/lang/String;

.field private blacklist mLocusId:Landroid/content/LocusId;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iput-object p1, p0, Landroid/app/DirectAction$Builder;->mId:Ljava/lang/String;

    .line 176
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/DirectAction;
    .registers 5

    .line 208
    new-instance v0, Landroid/app/DirectAction;

    iget-object v1, p0, Landroid/app/DirectAction$Builder;->mId:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/DirectAction$Builder;->mExtras:Landroid/os/Bundle;

    iget-object v3, p0, Landroid/app/DirectAction$Builder;->mLocusId:Landroid/content/LocusId;

    invoke-direct {v0, v1, v2, v3}, Landroid/app/DirectAction;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/LocusId;)V

    return-object v0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/app/DirectAction$Builder;
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 187
    iput-object p1, p0, Landroid/app/DirectAction$Builder;->mExtras:Landroid/os/Bundle;

    .line 188
    return-object p0
.end method

.method public whitelist setLocusId(Landroid/content/LocusId;)Landroid/app/DirectAction$Builder;
    .registers 2
    .param p1, "locusId"    # Landroid/content/LocusId;

    .line 200
    iput-object p1, p0, Landroid/app/DirectAction$Builder;->mLocusId:Landroid/content/LocusId;

    .line 201
    return-object p0
.end method
