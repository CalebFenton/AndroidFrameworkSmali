.class public final Lcom/android/commands/settings/SettingsCmd;
.super Ljava/lang/Object;
.source "SettingsCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/settings/SettingsCmd$CommandVerb;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-commands-settings-SettingsCmd$CommandVerbSwitchesValues:[I

.field static mArgs:[Ljava/lang/String;


# instance fields
.field mKey:Ljava/lang/String;

.field mNextArg:I

.field mTable:Ljava/lang/String;

.field mUser:I

.field mValue:Ljava/lang/String;

.field mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;


# direct methods
.method private static synthetic -getcom-android-commands-settings-SettingsCmd$CommandVerbSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/commands/settings/SettingsCmd;->-com-android-commands-settings-SettingsCmd$CommandVerbSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/commands/settings/SettingsCmd;->-com-android-commands-settings-SettingsCmd$CommandVerbSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->values()[Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->DELETE:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@10
    invoke-virtual {v1}, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->GET:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@19
    invoke-virtual {v1}, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->LIST:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@22
    invoke-virtual {v1}, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->PUT:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@2b
    invoke-virtual {v1}, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->UNSPECIFIED:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@34
    invoke-virtual {v1}, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    #@3b
    :goto_4
    sput-object v0, Lcom/android/commands/settings/SettingsCmd;->-com-android-commands-settings-SettingsCmd$CommandVerbSwitchesValues:[I

    #@3d
    return-object v0

    #@3e
    :catch_0
    move-exception v1

    #@3f
    goto :goto_4

    #@40
    :catch_1
    move-exception v1

    #@41
    goto :goto_3

    #@42
    :catch_2
    move-exception v1

    #@43
    goto :goto_2

    #@44
    :catch_3
    move-exception v1

    #@45
    goto :goto_1

    #@46
    :catch_4
    move-exception v1

    #@47
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 49
    const/4 v0, -0x1

    #@5
    iput v0, p0, Lcom/android/commands/settings/SettingsCmd;->mUser:I

    #@7
    .line 50
    sget-object v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->UNSPECIFIED:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@9
    iput-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@b
    .line 51
    iput-object v1, p0, Lcom/android/commands/settings/SettingsCmd;->mTable:Ljava/lang/String;

    #@d
    .line 52
    iput-object v1, p0, Lcom/android/commands/settings/SettingsCmd;->mKey:Ljava/lang/String;

    #@f
    .line 53
    iput-object v1, p0, Lcom/android/commands/settings/SettingsCmd;->mValue:Ljava/lang/String;

    #@11
    .line 37
    return-void
.end method

.method private listForUser(Landroid/content/IContentProvider;ILjava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .param p2, "userHandle"    # I
    .param p3, "table"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IContentProvider;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 192
    const-string/jumbo v0, "system"

    #@3
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    #@b
    .line 196
    :goto_0
    new-instance v10, Ljava/util/ArrayList;

    #@d
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@10
    .line 197
    .local v10, "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_3

    #@12
    .line 198
    return-object v10

    #@13
    .line 193
    .end local v10    # "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v0, "secure"

    #@16
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_1

    #@1c
    sget-object v2, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    #@1e
    .local v2, "uri":Landroid/net/Uri;
    goto :goto_0

    #@1f
    .line 194
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    const-string/jumbo v0, "global"

    #@22
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_2

    #@28
    sget-object v2, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    #@2a
    .restart local v2    # "uri":Landroid/net/Uri;
    goto :goto_0

    #@2b
    .line 195
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2
    const/4 v2, 0x0

    #@2c
    .local v2, "uri":Landroid/net/Uri;
    goto :goto_0

    #@2d
    .line 201
    .end local v2    # "uri":Landroid/net/Uri;
    .restart local v10    # "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/android/commands/settings/SettingsCmd;->resolveCallingPackage()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    const/4 v3, 0x0

    #@32
    const/4 v4, 0x0

    #@33
    const/4 v5, 0x0

    #@34
    .line 202
    const/4 v6, 0x0

    #@35
    const/4 v7, 0x0

    #@36
    move-object v0, p1

    #@37
    .line 201
    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    move-result-object v8

    #@3b
    .line 204
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_1
    if-eqz v8, :cond_5

    #@3d
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    #@40
    move-result v0

    #@41
    if-eqz v0, :cond_5

    #@43
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const/4 v1, 0x1

    #@49
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    const-string/jumbo v1, "="

    #@54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v0

    #@58
    const/4 v1, 0x2

    #@59
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v0

    #@61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v0

    #@65
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@68
    goto :goto_1

    #@69
    .line 207
    :catchall_0
    move-exception v0

    #@6a
    .line 208
    if-eqz v8, :cond_4

    #@6c
    .line 209
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@6f
    .line 207
    :cond_4
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@70
    .line 213
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    #@71
    .line 214
    .local v9, "e":Landroid/os/RemoteException;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@73
    new-instance v1, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v3, "List failed in "

    #@7b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v1

    #@7f
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v1

    #@83
    const-string/jumbo v3, " for user "

    #@86
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v1

    #@8a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v1

    #@8e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v1

    #@92
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@95
    .line 216
    .end local v9    # "e":Landroid/os/RemoteException;
    :goto_2
    return-object v10

    #@96
    .line 208
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_5
    if-eqz v8, :cond_6

    #@98
    .line 209
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@9b
    .line 212
    :cond_6
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    #@9e
    goto :goto_2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 56
    if-eqz p0, :cond_0

    #@2
    array-length v1, p0

    #@3
    const/4 v2, 0x2

    #@4
    if-ge v1, v2, :cond_1

    #@6
    .line 57
    :cond_0
    invoke-static {}, Lcom/android/commands/settings/SettingsCmd;->printUsage()V

    #@9
    .line 58
    return-void

    #@a
    .line 61
    :cond_1
    sput-object p0, Lcom/android/commands/settings/SettingsCmd;->mArgs:[Ljava/lang/String;

    #@c
    .line 63
    :try_start_0
    new-instance v1, Lcom/android/commands/settings/SettingsCmd;

    #@e
    invoke-direct {v1}, Lcom/android/commands/settings/SettingsCmd;-><init>()V

    #@11
    invoke-virtual {v1}, Lcom/android/commands/settings/SettingsCmd;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 55
    :goto_0
    return-void

    #@15
    .line 64
    :catch_0
    move-exception v0

    #@16
    .line 65
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@18
    const-string/jumbo v2, "Unable to run settings command"

    #@1b
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1e
    goto :goto_0
.end method

.method private nextArg()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 220
    iget v1, p0, Lcom/android/commands/settings/SettingsCmd;->mNextArg:I

    #@2
    sget-object v2, Lcom/android/commands/settings/SettingsCmd;->mArgs:[Ljava/lang/String;

    #@4
    array-length v2, v2

    #@5
    if-lt v1, v2, :cond_0

    #@7
    .line 221
    const/4 v1, 0x0

    #@8
    return-object v1

    #@9
    .line 223
    :cond_0
    sget-object v1, Lcom/android/commands/settings/SettingsCmd;->mArgs:[Ljava/lang/String;

    #@b
    iget v2, p0, Lcom/android/commands/settings/SettingsCmd;->mNextArg:I

    #@d
    aget-object v0, v1, v2

    #@f
    .line 224
    .local v0, "arg":Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/settings/SettingsCmd;->mNextArg:I

    #@11
    add-int/lit8 v1, v1, 0x1

    #@13
    iput v1, p0, Lcom/android/commands/settings/SettingsCmd;->mNextArg:I

    #@15
    .line 225
    return-object v0
.end method

.method private static printUsage()V
    .locals 2

    #@0
    .prologue
    .line 296
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    const-string/jumbo v1, "usage:  settings [--user <USER_ID> | current] get namespace key"

    #@5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8
    .line 297
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@a
    const-string/jumbo v1, "        settings [--user <USER_ID> | current] put namespace key value"

    #@d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@10
    .line 298
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@12
    const-string/jumbo v1, "        settings [--user <USER_ID> | current] delete namespace key"

    #@15
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@18
    .line 299
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1a
    const-string/jumbo v1, "        settings [--user <USER_ID> | current] list namespace"

    #@1d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@20
    .line 300
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@22
    const-string/jumbo v1, "\n\'namespace\' is one of {system, secure, global}, case-insensitive"

    #@25
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@28
    .line 301
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2a
    const-string/jumbo v1, "If \'--user <USER_ID> | current\' is not given, the operations are performed on the system user."

    #@2d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@30
    .line 295
    return-void
.end method

.method public static resolveCallingPackage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 306
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@3
    move-result v0

    #@4
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 316
    const/4 v0, 0x0

    #@8
    return-object v0

    #@9
    .line 308
    :sswitch_0
    const-string/jumbo v0, "root"

    #@c
    return-object v0

    #@d
    .line 312
    :sswitch_1
    const-string/jumbo v0, "com.android.shell"

    #@10
    return-object v0

    #@11
    .line 306
    nop

    #@12
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7d0 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method deleteForUser(Landroid/content/IContentProvider;ILjava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .param p2, "userHandle"    # I
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 277
    const-string/jumbo v3, "system"

    #@3
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_0

    #@9
    invoke-static {p4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@c
    move-result-object v2

    #@d
    .line 285
    .local v2, "targetUri":Landroid/net/Uri;
    :goto_0
    const/4 v1, 0x0

    #@e
    .line 287
    .local v1, "num":I
    :try_start_0
    invoke-static {}, Lcom/android/commands/settings/SettingsCmd;->resolveCallingPackage()Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    const/4 v4, 0x0

    #@13
    const/4 v5, 0x0

    #@14
    invoke-interface {p1, v3, v2, v4, v5}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result v1

    #@18
    .line 292
    :goto_1
    return v1

    #@19
    .line 278
    .end local v1    # "num":I
    .end local v2    # "targetUri":Landroid/net/Uri;
    :cond_0
    const-string/jumbo v3, "secure"

    #@1c
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_1

    #@22
    invoke-static {p4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@25
    move-result-object v2

    #@26
    .restart local v2    # "targetUri":Landroid/net/Uri;
    goto :goto_0

    #@27
    .line 279
    .end local v2    # "targetUri":Landroid/net/Uri;
    :cond_1
    const-string/jumbo v3, "global"

    #@2a
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_2

    #@30
    invoke-static {p4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@33
    move-result-object v2

    #@34
    .restart local v2    # "targetUri":Landroid/net/Uri;
    goto :goto_0

    #@35
    .line 281
    .end local v2    # "targetUri":Landroid/net/Uri;
    :cond_2
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@37
    const-string/jumbo v4, "Invalid table; no delete performed"

    #@3a
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3d
    .line 282
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@3f
    new-instance v4, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v5, "Invalid table "

    #@47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@56
    throw v3

    #@57
    .line 288
    .restart local v1    # "num":I
    .restart local v2    # "targetUri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    #@58
    .line 289
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@5a
    new-instance v4, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v5, "Can\'t clear key "

    #@62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v4

    #@66
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v4

    #@6a
    const-string/jumbo v5, " in "

    #@6d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v4

    #@71
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v4

    #@75
    const-string/jumbo v5, " for user "

    #@78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v4

    #@7c
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v4

    #@80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v4

    #@84
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@87
    goto :goto_1
.end method

.method getForUser(Landroid/content/IContentProvider;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .param p2, "userHandle"    # I
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 231
    const-string/jumbo v5, "system"

    #@3
    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v5

    #@7
    if-eqz v5, :cond_1

    #@9
    const-string/jumbo v2, "GET_system"

    #@c
    .line 239
    .local v2, "callGetCommand":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    #@d
    .line 241
    .local v4, "result":Ljava/lang/String;
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    #@f
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@12
    .line 242
    .local v0, "arg":Landroid/os/Bundle;
    const-string/jumbo v5, "_user"

    #@15
    invoke-virtual {v0, v5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@18
    .line 243
    invoke-static {}, Lcom/android/commands/settings/SettingsCmd;->resolveCallingPackage()Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    invoke-interface {p1, v5, v2, p4, v0}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@1f
    move-result-object v1

    #@20
    .line 244
    .local v1, "b":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    #@22
    .line 245
    invoke-virtual {v1}, Landroid/os/Bundle;->getPairValue()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    move-result-object v4

    #@26
    .line 250
    .end local v0    # "arg":Landroid/os/Bundle;
    .end local v1    # "b":Landroid/os/Bundle;
    .end local v4    # "result":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v4

    #@27
    .line 232
    .end local v2    # "callGetCommand":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "secure"

    #@2a
    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_2

    #@30
    const-string/jumbo v2, "GET_secure"

    #@33
    .restart local v2    # "callGetCommand":Ljava/lang/String;
    goto :goto_0

    #@34
    .line 233
    .end local v2    # "callGetCommand":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "global"

    #@37
    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v5

    #@3b
    if-eqz v5, :cond_3

    #@3d
    const-string/jumbo v2, "GET_global"

    #@40
    .restart local v2    # "callGetCommand":Ljava/lang/String;
    goto :goto_0

    #@41
    .line 235
    .end local v2    # "callGetCommand":Ljava/lang/String;
    :cond_3
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@43
    const-string/jumbo v6, "Invalid table; no put performed"

    #@46
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@49
    .line 236
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@4b
    new-instance v6, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v7, "Invalid table "

    #@53
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v6

    #@57
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v6

    #@5b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v6

    #@5f
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@62
    throw v5

    #@63
    .line 247
    .restart local v2    # "callGetCommand":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    :catch_0
    move-exception v3

    #@64
    .line 248
    .local v3, "e":Landroid/os/RemoteException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@66
    new-instance v6, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v7, "Can\'t read key "

    #@6e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v6

    #@72
    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v6

    #@76
    const-string/jumbo v7, " in "

    #@79
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v6

    #@7d
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v6

    #@81
    const-string/jumbo v7, " for user "

    #@84
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v6

    #@88
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v6

    #@8c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v6

    #@90
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@93
    goto :goto_1
.end method

.method putForUser(Landroid/content/IContentProvider;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .param p2, "userHandle"    # I
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 256
    const-string/jumbo v3, "system"

    #@3
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_0

    #@9
    const-string/jumbo v1, "PUT_system"

    #@c
    .line 265
    .local v1, "callPutCommand":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    #@e
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@11
    .line 266
    .local v0, "arg":Landroid/os/Bundle;
    const-string/jumbo v3, "value"

    #@14
    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    .line 267
    const-string/jumbo v3, "_user"

    #@1a
    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@1d
    .line 268
    invoke-static {}, Lcom/android/commands/settings/SettingsCmd;->resolveCallingPackage()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-interface {p1, v3, v1, p4, v0}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 254
    .end local v0    # "arg":Landroid/os/Bundle;
    :goto_1
    return-void

    #@25
    .line 257
    .end local v1    # "callPutCommand":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "secure"

    #@28
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_1

    #@2e
    const-string/jumbo v1, "PUT_secure"

    #@31
    .restart local v1    # "callPutCommand":Ljava/lang/String;
    goto :goto_0

    #@32
    .line 258
    .end local v1    # "callPutCommand":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "global"

    #@35
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v3

    #@39
    if-eqz v3, :cond_2

    #@3b
    const-string/jumbo v1, "PUT_global"

    #@3e
    .restart local v1    # "callPutCommand":Ljava/lang/String;
    goto :goto_0

    #@3f
    .line 260
    .end local v1    # "callPutCommand":Ljava/lang/String;
    :cond_2
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@41
    const-string/jumbo v4, "Invalid table; no put performed"

    #@44
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@47
    .line 261
    return-void

    #@48
    .line 269
    .restart local v1    # "callPutCommand":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@49
    .line 270
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4b
    new-instance v4, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v5, "Can\'t set key "

    #@53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    const-string/jumbo v5, " in "

    #@5e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v4

    #@66
    const-string/jumbo v5, " for user "

    #@69
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v4

    #@6d
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    move-result-object v4

    #@71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v4

    #@75
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@78
    goto :goto_1
.end method

.method public run()V
    .locals 14

    #@0
    .prologue
    const/4 v4, -0x2

    #@1
    .line 70
    const/4 v13, 0x0

    #@2
    .line 73
    .local v13, "valid":Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/settings/SettingsCmd;->nextArg()Ljava/lang/String;

    #@5
    move-result-object v7

    #@6
    .local v7, "arg":Ljava/lang/String;
    if-eqz v7, :cond_1

    #@8
    .line 74
    const-string/jumbo v0, "--user"

    #@b
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_9

    #@11
    .line 75
    iget v0, p0, Lcom/android/commands/settings/SettingsCmd;->mUser:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@13
    const/4 v2, -0x1

    #@14
    if-eq v0, v2, :cond_6

    #@16
    .line 136
    .end local v7    # "arg":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v13, :cond_19

    #@18
    .line 138
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@1b
    move-result-object v6

    #@1c
    .line 139
    .local v6, "activityManager":Landroid/app/IActivityManager;
    iget v0, p0, Lcom/android/commands/settings/SettingsCmd;->mUser:I

    #@1e
    if-ne v0, v4, :cond_2

    #@20
    .line 140
    invoke-interface {v6}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    #@23
    move-result-object v0

    #@24
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@26
    iput v0, p0, Lcom/android/commands/settings/SettingsCmd;->mUser:I

    #@28
    .line 142
    :cond_2
    iget v0, p0, Lcom/android/commands/settings/SettingsCmd;->mUser:I

    #@2a
    if-gez v0, :cond_3

    #@2c
    .line 143
    const/4 v0, 0x0

    #@2d
    iput v0, p0, Lcom/android/commands/settings/SettingsCmd;->mUser:I

    #@2f
    .line 145
    :cond_3
    const/4 v1, 0x0

    #@30
    .line 146
    .local v1, "provider":Landroid/content/IContentProvider;
    new-instance v12, Landroid/os/Binder;

    #@32
    invoke-direct {v12}, Landroid/os/Binder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@35
    .line 149
    .local v12, "token":Landroid/os/IBinder;
    :try_start_2
    const-string/jumbo v0, "settings"

    #@38
    const/4 v2, 0x0

    #@39
    .line 148
    invoke-interface {v6, v0, v2, v12}, Landroid/app/IActivityManager;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;

    #@3c
    move-result-object v9

    #@3d
    .line 150
    .local v9, "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    if-nez v9, :cond_17

    #@3f
    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    #@41
    const-string/jumbo v2, "Could not find settings provider"

    #@44
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@47
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@48
    .line 176
    .end local v1    # "provider":Landroid/content/IContentProvider;
    .end local v9    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    :catchall_0
    move-exception v0

    #@49
    .line 177
    if-eqz v1, :cond_4

    #@4b
    .line 178
    :try_start_3
    const-string/jumbo v2, "settings"

    #@4e
    invoke-interface {v6, v2, v12}, Landroid/app/IActivityManager;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    #@51
    .line 176
    :cond_4
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    #@52
    .line 181
    .end local v6    # "activityManager":Landroid/app/IActivityManager;
    .end local v12    # "token":Landroid/os/IBinder;
    :catch_0
    move-exception v8

    #@53
    .line 182
    .local v8, "e":Ljava/lang/Exception;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@55
    const-string/jumbo v2, "Error while accessing settings provider"

    #@58
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5b
    .line 183
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    #@5e
    .line 69
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_2
    return-void

    #@5f
    .line 79
    .restart local v7    # "arg":Ljava/lang/String;
    :cond_6
    :try_start_4
    invoke-direct {p0}, Lcom/android/commands/settings/SettingsCmd;->nextArg()Ljava/lang/String;

    #@62
    move-result-object v7

    #@63
    .line 80
    const-string/jumbo v0, "current"

    #@66
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@69
    move-result v0

    #@6a
    if-nez v0, :cond_7

    #@6c
    const-string/jumbo v0, "cur"

    #@6f
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v0

    #@73
    if-eqz v0, :cond_8

    #@75
    .line 81
    :cond_7
    const/4 v0, -0x2

    #@76
    iput v0, p0, Lcom/android/commands/settings/SettingsCmd;->mUser:I

    #@78
    goto :goto_0

    #@79
    .line 132
    .end local v7    # "arg":Ljava/lang/String;
    :catch_1
    move-exception v8

    #@7a
    .line 133
    .restart local v8    # "e":Ljava/lang/Exception;
    const/4 v13, 0x0

    #@7b
    goto :goto_1

    #@7c
    .line 83
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "arg":Ljava/lang/String;
    :cond_8
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7f
    move-result v0

    #@80
    iput v0, p0, Lcom/android/commands/settings/SettingsCmd;->mUser:I

    #@82
    goto :goto_0

    #@83
    .line 85
    :cond_9
    iget-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@85
    sget-object v2, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->UNSPECIFIED:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@87
    if-ne v0, v2, :cond_e

    #@89
    .line 86
    const-string/jumbo v0, "get"

    #@8c
    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@8f
    move-result v0

    #@90
    if-eqz v0, :cond_a

    #@92
    .line 87
    sget-object v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->GET:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@94
    iput-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@96
    goto/16 :goto_0

    #@98
    .line 88
    :cond_a
    const-string/jumbo v0, "put"

    #@9b
    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@9e
    move-result v0

    #@9f
    if-eqz v0, :cond_b

    #@a1
    .line 89
    sget-object v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->PUT:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@a3
    iput-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@a5
    goto/16 :goto_0

    #@a7
    .line 90
    :cond_b
    const-string/jumbo v0, "delete"

    #@aa
    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@ad
    move-result v0

    #@ae
    if-eqz v0, :cond_c

    #@b0
    .line 91
    sget-object v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->DELETE:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@b2
    iput-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@b4
    goto/16 :goto_0

    #@b6
    .line 92
    :cond_c
    const-string/jumbo v0, "list"

    #@b9
    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@bc
    move-result v0

    #@bd
    if-eqz v0, :cond_d

    #@bf
    .line 93
    sget-object v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->LIST:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@c1
    iput-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@c3
    goto/16 :goto_0

    #@c5
    .line 96
    :cond_d
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@c7
    new-instance v2, Ljava/lang/StringBuilder;

    #@c9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@cc
    const-string/jumbo v3, "Invalid command: "

    #@cf
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v2

    #@d3
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v2

    #@d7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v2

    #@db
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@de
    goto/16 :goto_1

    #@e0
    .line 99
    :cond_e
    iget-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mTable:Ljava/lang/String;

    #@e2
    if-nez v0, :cond_11

    #@e4
    .line 100
    const-string/jumbo v0, "system"

    #@e7
    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@ea
    move-result v0

    #@eb
    if-nez v0, :cond_f

    #@ed
    .line 101
    const-string/jumbo v0, "secure"

    #@f0
    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@f3
    move-result v0

    #@f4
    if-eqz v0, :cond_10

    #@f6
    .line 106
    :cond_f
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@f9
    move-result-object v0

    #@fa
    iput-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mTable:Ljava/lang/String;

    #@fc
    .line 107
    iget-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@fe
    sget-object v2, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->LIST:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@100
    if-ne v0, v2, :cond_0

    #@102
    .line 108
    const/4 v13, 0x1

    #@103
    .line 109
    goto/16 :goto_1

    #@105
    .line 102
    :cond_10
    const-string/jumbo v0, "global"

    #@108
    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@10b
    move-result v0

    #@10c
    if-nez v0, :cond_f

    #@10e
    .line 103
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@110
    new-instance v2, Ljava/lang/StringBuilder;

    #@112
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@115
    const-string/jumbo v3, "Invalid namespace \'"

    #@118
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v2

    #@11c
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v2

    #@120
    const-string/jumbo v3, "\'"

    #@123
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v2

    #@127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12a
    move-result-object v2

    #@12b
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@12e
    goto/16 :goto_1

    #@130
    .line 111
    :cond_11
    iget-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@132
    sget-object v2, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->GET:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@134
    if-eq v0, v2, :cond_12

    #@136
    iget-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@138
    sget-object v2, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->DELETE:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@13a
    if-ne v0, v2, :cond_14

    #@13c
    .line 112
    :cond_12
    iput-object v7, p0, Lcom/android/commands/settings/SettingsCmd;->mKey:Ljava/lang/String;

    #@13e
    .line 113
    iget v0, p0, Lcom/android/commands/settings/SettingsCmd;->mNextArg:I

    #@140
    sget-object v2, Lcom/android/commands/settings/SettingsCmd;->mArgs:[Ljava/lang/String;

    #@142
    array-length v2, v2

    #@143
    if-lt v0, v2, :cond_13

    #@145
    .line 114
    const/4 v13, 0x1

    #@146
    goto/16 :goto_1

    #@148
    .line 116
    :cond_13
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@14a
    const-string/jumbo v2, "Too many arguments"

    #@14d
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@150
    goto/16 :goto_1

    #@152
    .line 119
    :cond_14
    iget-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mKey:Ljava/lang/String;

    #@154
    if-nez v0, :cond_15

    #@156
    .line 120
    iput-object v7, p0, Lcom/android/commands/settings/SettingsCmd;->mKey:Ljava/lang/String;

    #@158
    goto/16 :goto_0

    #@15a
    .line 123
    :cond_15
    iput-object v7, p0, Lcom/android/commands/settings/SettingsCmd;->mValue:Ljava/lang/String;

    #@15c
    .line 124
    iget v0, p0, Lcom/android/commands/settings/SettingsCmd;->mNextArg:I

    #@15e
    sget-object v2, Lcom/android/commands/settings/SettingsCmd;->mArgs:[Ljava/lang/String;

    #@160
    array-length v2, v2

    #@161
    if-lt v0, v2, :cond_16

    #@163
    .line 125
    const/4 v13, 0x1

    #@164
    goto/16 :goto_1

    #@166
    .line 127
    :cond_16
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@168
    const-string/jumbo v2, "Too many arguments"

    #@16b
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    #@16e
    goto/16 :goto_1

    #@170
    .line 153
    .end local v7    # "arg":Ljava/lang/String;
    .restart local v1    # "provider":Landroid/content/IContentProvider;
    .restart local v6    # "activityManager":Landroid/app/IActivityManager;
    .restart local v9    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v12    # "token":Landroid/os/IBinder;
    :cond_17
    :try_start_5
    iget-object v1, v9, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    #@172
    .line 155
    .local v1, "provider":Landroid/content/IContentProvider;
    invoke-static {}, Lcom/android/commands/settings/SettingsCmd;->-getcom-android-commands-settings-SettingsCmd$CommandVerbSwitchesValues()[I

    #@175
    move-result-object v0

    #@176
    iget-object v2, p0, Lcom/android/commands/settings/SettingsCmd;->mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@178
    invoke-virtual {v2}, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->ordinal()I

    #@17b
    move-result v2

    #@17c
    aget v0, v0, v2

    #@17e
    packed-switch v0, :pswitch_data_0

    #@181
    .line 172
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@183
    const-string/jumbo v2, "Unspecified command"

    #@186
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@189
    .line 177
    :cond_18
    :goto_3
    if-eqz v1, :cond_5

    #@18b
    .line 178
    :try_start_6
    const-string/jumbo v0, "settings"

    #@18e
    invoke-interface {v6, v0, v12}, Landroid/app/IActivityManager;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    #@191
    goto/16 :goto_2

    #@193
    .line 157
    :pswitch_0
    :try_start_7
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@195
    iget v2, p0, Lcom/android/commands/settings/SettingsCmd;->mUser:I

    #@197
    iget-object v3, p0, Lcom/android/commands/settings/SettingsCmd;->mTable:Ljava/lang/String;

    #@199
    iget-object v4, p0, Lcom/android/commands/settings/SettingsCmd;->mKey:Ljava/lang/String;

    #@19b
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/commands/settings/SettingsCmd;->getForUser(Landroid/content/IContentProvider;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@19e
    move-result-object v2

    #@19f
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1a2
    goto :goto_3

    #@1a3
    .line 160
    :pswitch_1
    iget v2, p0, Lcom/android/commands/settings/SettingsCmd;->mUser:I

    #@1a5
    iget-object v3, p0, Lcom/android/commands/settings/SettingsCmd;->mTable:Ljava/lang/String;

    #@1a7
    iget-object v4, p0, Lcom/android/commands/settings/SettingsCmd;->mKey:Ljava/lang/String;

    #@1a9
    iget-object v5, p0, Lcom/android/commands/settings/SettingsCmd;->mValue:Ljava/lang/String;

    #@1ab
    move-object v0, p0

    #@1ac
    invoke-virtual/range {v0 .. v5}, Lcom/android/commands/settings/SettingsCmd;->putForUser(Landroid/content/IContentProvider;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1af
    goto :goto_3

    #@1b0
    .line 163
    :pswitch_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1b2
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b7
    const-string/jumbo v3, "Deleted "

    #@1ba
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bd
    move-result-object v2

    #@1be
    .line 164
    iget v3, p0, Lcom/android/commands/settings/SettingsCmd;->mUser:I

    #@1c0
    iget-object v4, p0, Lcom/android/commands/settings/SettingsCmd;->mTable:Ljava/lang/String;

    #@1c2
    iget-object v5, p0, Lcom/android/commands/settings/SettingsCmd;->mKey:Ljava/lang/String;

    #@1c4
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/commands/settings/SettingsCmd;->deleteForUser(Landroid/content/IContentProvider;ILjava/lang/String;Ljava/lang/String;)I

    #@1c7
    move-result v3

    #@1c8
    .line 163
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1cb
    move-result-object v2

    #@1cc
    .line 164
    const-string/jumbo v3, " rows"

    #@1cf
    .line 163
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d2
    move-result-object v2

    #@1d3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d6
    move-result-object v2

    #@1d7
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1da
    goto :goto_3

    #@1db
    .line 167
    :pswitch_3
    iget v0, p0, Lcom/android/commands/settings/SettingsCmd;->mUser:I

    #@1dd
    iget-object v2, p0, Lcom/android/commands/settings/SettingsCmd;->mTable:Ljava/lang/String;

    #@1df
    invoke-direct {p0, v1, v0, v2}, Lcom/android/commands/settings/SettingsCmd;->listForUser(Landroid/content/IContentProvider;ILjava/lang/String;)Ljava/util/List;

    #@1e2
    move-result-object v0

    #@1e3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e6
    move-result-object v11

    #@1e7
    .local v11, "line$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@1ea
    move-result v0

    #@1eb
    if-eqz v0, :cond_18

    #@1ed
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f0
    move-result-object v10

    #@1f1
    check-cast v10, Ljava/lang/String;

    #@1f3
    .line 168
    .local v10, "line":Ljava/lang/String;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1f5
    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@1f8
    goto :goto_4

    #@1f9
    .line 187
    .end local v1    # "provider":Landroid/content/IContentProvider;
    .end local v6    # "activityManager":Landroid/app/IActivityManager;
    .end local v9    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v10    # "line":Ljava/lang/String;
    .end local v11    # "line$iterator":Ljava/util/Iterator;
    .end local v12    # "token":Landroid/os/IBinder;
    :cond_19
    invoke-static {}, Lcom/android/commands/settings/SettingsCmd;->printUsage()V

    #@1fc
    goto/16 :goto_2

    #@1fe
    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
