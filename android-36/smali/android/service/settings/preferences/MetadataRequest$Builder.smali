.class public final Landroid/service/settings/preferences/MetadataRequest$Builder;
.super Ljava/lang/Object;
.source "MetadataRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/settings/preferences/MetadataRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/service/settings/preferences/MetadataRequest;
    .registers 3

    .line 73
    new-instance v0, Landroid/service/settings/preferences/MetadataRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/service/settings/preferences/MetadataRequest;-><init>(Landroid/service/settings/preferences/MetadataRequest-IA;)V

    return-object v0
.end method
