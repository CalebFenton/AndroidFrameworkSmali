.class Ljava/util/prefs/FilePreferencesFactoryImpl;
.super Ljava/lang/Object;
.source "FilePreferencesFactoryImpl.java"

# interfaces
.implements Ljava/util/prefs/PreferencesFactory;


# static fields
.field private static final SYSTEM_ROOT:Ljava/util/prefs/Preferences;

.field private static final USER_ROOT:Ljava/util/prefs/Preferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 27
    new-instance v0, Ljava/util/prefs/FilePreferencesImpl;

    #@2
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "user.home"

    #@a
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, "/.java/.userPrefs"

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    const/4 v2, 0x1

    #@1e
    .line 27
    invoke-direct {v0, v1, v2}, Ljava/util/prefs/FilePreferencesImpl;-><init>(Ljava/lang/String;Z)V

    #@21
    sput-object v0, Ljava/util/prefs/FilePreferencesFactoryImpl;->USER_ROOT:Ljava/util/prefs/Preferences;

    #@23
    .line 31
    new-instance v0, Ljava/util/prefs/FilePreferencesImpl;

    #@25
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v2, "java.home"

    #@2d
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    const-string/jumbo v2, "/.systemPrefs"

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    const/4 v2, 0x0

    #@41
    .line 31
    invoke-direct {v0, v1, v2}, Ljava/util/prefs/FilePreferencesImpl;-><init>(Ljava/lang/String;Z)V

    #@44
    sput-object v0, Ljava/util/prefs/FilePreferencesFactoryImpl;->SYSTEM_ROOT:Ljava/util/prefs/Preferences;

    #@46
    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public systemRoot()Ljava/util/prefs/Preferences;
    .locals 1

    #@0
    .prologue
    .line 42
    sget-object v0, Ljava/util/prefs/FilePreferencesFactoryImpl;->SYSTEM_ROOT:Ljava/util/prefs/Preferences;

    #@2
    return-object v0
.end method

.method public userRoot()Ljava/util/prefs/Preferences;
    .locals 1

    #@0
    .prologue
    .line 38
    sget-object v0, Ljava/util/prefs/FilePreferencesFactoryImpl;->USER_ROOT:Ljava/util/prefs/Preferences;

    #@2
    return-object v0
.end method
