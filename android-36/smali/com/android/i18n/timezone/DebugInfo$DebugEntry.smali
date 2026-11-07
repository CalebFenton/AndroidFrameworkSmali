.class public Lcom/android/i18n/timezone/DebugInfo$DebugEntry;
.super Ljava/lang/Object;
.source "DebugInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/timezone/DebugInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugEntry"
.end annotation


# instance fields
.field private final blacklist key:Ljava/lang/String;

.field private final blacklist stringValue:Ljava/lang/String;


# direct methods
.method public constructor blacklist test-api <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stringValue"    # Ljava/lang/String;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/android/i18n/timezone/DebugInfo$DebugEntry;->key:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lcom/android/i18n/timezone/DebugInfo$DebugEntry;->stringValue:Ljava/lang/String;

    .line 88
    return-void
.end method


# virtual methods
.method public blacklist test-api getKey()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/android/i18n/timezone/DebugInfo$DebugEntry;->key:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist test-api getStringValue()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/android/i18n/timezone/DebugInfo$DebugEntry;->stringValue:Ljava/lang/String;

    return-object v0
.end method
