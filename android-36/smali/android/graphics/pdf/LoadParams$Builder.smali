.class public final Landroid/graphics/pdf/LoadParams$Builder;
.super Ljava/lang/Object;
.source "LoadParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/pdf/LoadParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mPassword:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/graphics/pdf/LoadParams;
    .registers 4

    .line 76
    new-instance v0, Landroid/graphics/pdf/LoadParams;

    iget-object v1, p0, Landroid/graphics/pdf/LoadParams$Builder;->mPassword:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/pdf/LoadParams;-><init>(Ljava/lang/String;Landroid/graphics/pdf/LoadParams-IA;)V

    return-object v0
.end method

.method public whitelist setPassword(Ljava/lang/String;)Landroid/graphics/pdf/LoadParams$Builder;
    .registers 2
    .param p1, "password"    # Ljava/lang/String;

    .line 65
    iput-object p1, p0, Landroid/graphics/pdf/LoadParams$Builder;->mPassword:Ljava/lang/String;

    .line 66
    return-object p0
.end method
