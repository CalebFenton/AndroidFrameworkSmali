.class Ljava/security/Security$ProviderProperty;
.super Ljava/lang/Object;
.source "Security.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/Security;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderProperty"
.end annotation


# instance fields
.field greylist-max-o className:Ljava/lang/String;

.field greylist-max-o provider:Ljava/security/Provider;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/security/Security-IA;)V
    .registers 2

    invoke-direct {p0}, Ljava/security/Security$ProviderProperty;-><init>()V

    return-void
.end method
