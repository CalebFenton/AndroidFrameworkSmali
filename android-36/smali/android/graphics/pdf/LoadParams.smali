.class public final Landroid/graphics/pdf/LoadParams;
.super Ljava/lang/Object;
.source "LoadParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/pdf/LoadParams$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mPassword:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "password"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/graphics/pdf/LoadParams;->mPassword:Ljava/lang/String;

    .line 34
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/graphics/pdf/LoadParams-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/graphics/pdf/LoadParams;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist getPassword()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Landroid/graphics/pdf/LoadParams;->mPassword:Ljava/lang/String;

    return-object v0
.end method
