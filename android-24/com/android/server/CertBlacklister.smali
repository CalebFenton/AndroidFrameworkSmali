.class public Lcom/android/server/CertBlacklister;
.super Landroid/os/Binder;
.source "CertBlacklister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/CertBlacklister$BlacklistObserver;
    }
.end annotation


# static fields
.field private static final BLACKLIST_ROOT:Ljava/lang/String;

.field public static final PUBKEY_BLACKLIST_KEY:Ljava/lang/String; = "pubkey_blacklist"

.field public static final PUBKEY_PATH:Ljava/lang/String;

.field public static final SERIAL_BLACKLIST_KEY:Ljava/lang/String; = "serial_blacklist"

.field public static final SERIAL_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CertBlacklister"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ANDROID_DATA"

    #@8
    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, "/misc/keychain/"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    sput-object v0, Lcom/android/server/CertBlacklister;->BLACKLIST_ROOT:Ljava/lang/String;

    #@1d
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    sget-object v1, Lcom/android/server/CertBlacklister;->BLACKLIST_ROOT:Ljava/lang/String;

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    const-string/jumbo v1, "pubkey_blacklist.txt"

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    sput-object v0, Lcom/android/server/CertBlacklister;->PUBKEY_PATH:Ljava/lang/String;

    #@35
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    sget-object v1, Lcom/android/server/CertBlacklister;->BLACKLIST_ROOT:Ljava/lang/String;

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    const-string/jumbo v1, "serial_blacklist.txt"

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    sput-object v0, Lcom/android/server/CertBlacklister;->SERIAL_PATH:Ljava/lang/String;

    #@4d
    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 109
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v0

    #@7
    invoke-direct {p0, v0}, Lcom/android/server/CertBlacklister;->registerObservers(Landroid/content/ContentResolver;)V

    #@a
    .line 109
    return-void
.end method

.method private buildPubkeyObserver(Landroid/content/ContentResolver;)Lcom/android/server/CertBlacklister$BlacklistObserver;
    .locals 4
    .param p1, "cr"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    .line 114
    new-instance v0, Lcom/android/server/CertBlacklister$BlacklistObserver;

    #@2
    const-string/jumbo v1, "pubkey_blacklist"

    #@5
    .line 115
    const-string/jumbo v2, "pubkey"

    #@8
    .line 116
    sget-object v3, Lcom/android/server/CertBlacklister;->PUBKEY_PATH:Ljava/lang/String;

    #@a
    .line 114
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/server/CertBlacklister$BlacklistObserver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    #@d
    return-object v0
.end method

.method private buildSerialObserver(Landroid/content/ContentResolver;)Lcom/android/server/CertBlacklister$BlacklistObserver;
    .locals 4
    .param p1, "cr"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    .line 121
    new-instance v0, Lcom/android/server/CertBlacklister$BlacklistObserver;

    #@2
    const-string/jumbo v1, "serial_blacklist"

    #@5
    .line 122
    const-string/jumbo v2, "serial"

    #@8
    .line 123
    sget-object v3, Lcom/android/server/CertBlacklister;->SERIAL_PATH:Ljava/lang/String;

    #@a
    .line 121
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/server/CertBlacklister$BlacklistObserver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    #@d
    return-object v0
.end method

.method private registerObservers(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "cr"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 130
    const-string/jumbo v0, "pubkey_blacklist"

    #@4
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@7
    move-result-object v0

    #@8
    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/CertBlacklister;->buildPubkeyObserver(Landroid/content/ContentResolver;)Lcom/android/server/CertBlacklister$BlacklistObserver;

    #@b
    move-result-object v1

    #@c
    .line 129
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@f
    .line 137
    const-string/jumbo v0, "serial_blacklist"

    #@12
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@15
    move-result-object v0

    #@16
    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/CertBlacklister;->buildSerialObserver(Landroid/content/ContentResolver;)Lcom/android/server/CertBlacklister$BlacklistObserver;

    #@19
    move-result-object v1

    #@1a
    .line 136
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@1d
    .line 127
    return-void
.end method
