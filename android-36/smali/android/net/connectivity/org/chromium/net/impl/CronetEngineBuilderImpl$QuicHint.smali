.class public Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$QuicHint;
.super Ljava/lang/Object;
.source "CronetEngineBuilderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuicHint"
.end annotation


# instance fields
.field final blacklist mAlternatePort:I

.field final blacklist mHost:Ljava/lang/String;

.field final blacklist mPort:I


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "alternatePort"    # I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$QuicHint;->mHost:Ljava/lang/String;

    .line 47
    iput p2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$QuicHint;->mPort:I

    .line 48
    iput p3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$QuicHint;->mAlternatePort:I

    .line 49
    return-void
.end method
