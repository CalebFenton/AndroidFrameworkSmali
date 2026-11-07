.class public Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$Pkp;
.super Ljava/lang/Object;
.source "CronetEngineBuilderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pkp"
.end annotation


# instance fields
.field final blacklist mExpirationDate:Ljava/util/Date;

.field final blacklist mHashes:[[B

.field final blacklist mHost:Ljava/lang/String;

.field final blacklist mIncludeSubdomains:Z


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;[[BZLjava/util/Date;)V
    .registers 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "hashes"    # [[B
    .param p3, "includeSubdomains"    # Z
    .param p4, "expirationDate"    # Ljava/util/Date;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$Pkp;->mHost:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$Pkp;->mHashes:[[B

    .line 66
    iput-boolean p3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$Pkp;->mIncludeSubdomains:Z

    .line 67
    iput-object p4, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$Pkp;->mExpirationDate:Ljava/util/Date;

    .line 68
    return-void
.end method
