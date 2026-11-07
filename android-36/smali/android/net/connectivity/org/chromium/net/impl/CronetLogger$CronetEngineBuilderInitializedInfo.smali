.class public final Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;
.super Ljava/lang/Object;
.source "CronetLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CronetEngineBuilderInitializedInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;
    }
.end annotation


# instance fields
.field public blacklist apiVersion:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;

.field public blacklist author:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

.field public blacklist creationSuccessful:Ljava/lang/Boolean;

.field public blacklist cronetInitializationRef:J

.field public blacklist engineBuilderCreatedLatencyMillis:I

.field public blacklist implVersion:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;

.field public blacklist source:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

.field public blacklist uid:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->engineBuilderCreatedLatencyMillis:I

    .line 74
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_UNSPECIFIED:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->source:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    return-void
.end method
