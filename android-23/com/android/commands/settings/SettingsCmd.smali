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
.field private static synthetic -com_android_commands_settings_SettingsCmd$CommandVerbSwitchesValues:[I

.field static mArgs:[Ljava/lang/String;


# instance fields
.field mKey:Ljava/lang/String;

.field mNextArg:I

.field mTable:Ljava/lang/String;

.field mUser:I

.field mValue:Ljava/lang/String;

.field mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;


# direct methods
.method private static synthetic -getcom_android_commands_settings_SettingsCmd$CommandVerbSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/commands/settings/SettingsCmd;->-com_android_commands_settings_SettingsCmd$CommandVerbSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/commands/settings/SettingsCmd;->-com_android_commands_settings_SettingsCmd$CommandVerbSwitchesValues:[I

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
    sput-object v0, Lcom/android/commands/settings/SettingsCmd;->-com_android_commands_settings_SettingsCmd$CommandVerbSwitchesValues:[I

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
    .line 185
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
    .line 189
    :goto_0
    new-instance v10, Ljava/util/ArrayList;

    #@d
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@10
    .line 190
    .local v10, "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_3

    #@12
    .line 191
    return-object v10

    #@13
    .line 186
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
    .line 187
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
    .line 188
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2
    const/4 v2, 0x0

    #@2c
    .local v2, "uri":Landroid/net/Uri;
    goto :goto_0

    #@2d
    .line 194
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
    .line 195
    const/4 v6, 0x0

    #@35
    const/4 v7, 0x0

    #@36
    move-object v0, p1

    #@37
    .line 194
    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    move-result-object v8

    #@3b
    .line 197
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
    .line 198
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
    .line 200
    :catchall_0
    move-exception v0

    #@6a
    .line 201
    if-eqz v8, :cond_4

    #@6c
    .line 202
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@6f
    .line 200
    :cond_4
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@70
    .line 206
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    #@71
    .line 207
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
    .line 209
    .end local v9    # "e":Landroid/os/RemoteException;
    :goto_2
    return-object v10

    #@96
    .line 201
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_5
    if-eqz v8, :cond_6

    #@98
    .line 202
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@9b
    .line 205
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
    .line 213
    iget v1, p0, Lcom/android/commands/settings/SettingsCmd;->mNextArg:I

    #@2
    sget-object v2, Lcom/android/commands/settings/SettingsCmd;->mArgs:[Ljava/lang/String;

    #@4
    array-length v2, v2

    #@5
    if-lt v1, v2, :cond_0

    #@7
    .line 214
    const/4 v1, 0x0

    #@8
    return-object v1

    #@9
    .line 216
    :cond_0
    sget-object v1, Lcom/android/commands/settings/SettingsCmd;->mArgs:[Ljava/lang/String;

    #@b
    iget v2, p0, Lcom/android/commands/settings/SettingsCmd;->mNextArg:I

    #@d
    aget-object v0, v1, v2

    #@f
    .line 217
    .local v0, "arg":Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/settings/SettingsCmd;->mNextArg:I

    #@11
    add-int/lit8 v1, v1, 0x1

    #@13
    iput v1, p0, Lcom/android/commands/settings/SettingsCmd;->mNextArg:I

    #@15
    .line 218
    return-object v0
.end method

.method private static printUsage()V
    .locals 2

    #@0
    .prologue
    .line 289
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    const-string/jumbo v1, "usage:  settings [--user NUM] get namespace key"

    #@5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8
    .line 290
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@a
    const-string/jumbo v1, "        settings [--user NUM] put namespace key value"

    #@d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@10
    .line 291
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@12
    const-string/jumbo v1, "        settings [--user NUM] delete namespace key"

    #@15
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@18
    .line 292
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1a
    const-string/jumbo v1, "        settings [--user NUM] list namespace"

    #@1d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@20
    .line 293
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@22
    const-string/jumbo v1, "\n\'namespace\' is one of {system, secure, global}, case-insensitive"

    #@25
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@28
    .line 294
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2a
    const-string/jumbo v1, "If \'--user NUM\' is not given, the operations are performed on the owner user."

    #@2d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@30
    .line 288
    return-void
.end method

.method public static resolveCallingPackage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 298
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@3
    move-result v0

    #@4
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 308
    const/4 v0, 0x0

    #@8
    return-object v0

    #@9
    .line 300
    :sswitch_0
    const-string/jumbo v0, "root"

    #@c
    return-object v0

    #@d
    .line 304
    :sswitch_1
    const-string/jumbo v0, "com.android.shell"

    #@10
    return-object v0

    #@11
    .line 298
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
    .line 270
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
    .line 278
    .local v2, "targetUri":Landroid/net/Uri;
    :goto_0
    const/4 v1, 0x0

    #@e
    .line 280
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
    .line 285
    :goto_1
    return v1

    #@19
    .line 271
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
    .line 272
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
    .line 274
    .end local v2    # "targetUri":Landroid/net/Uri;
    :cond_2
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@37
    const-string/jumbo v4, "Invalid table; no delete performed"

    #@3a
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3d
    .line 275
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
    .line 281
    .restart local v1    # "num":I
    .restart local v2    # "targetUri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    #@58
    .line 282
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
    .line 224
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
    .line 232
    .local v2, "callGetCommand":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    #@d
    .line 234
    .local v4, "result":Ljava/lang/String;
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    #@f
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@12
    .line 235
    .local v0, "arg":Landroid/os/Bundle;
    const-string/jumbo v5, "_user"

    #@15
    invoke-virtual {v0, v5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@18
    .line 236
    invoke-static {}, Lcom/android/commands/settings/SettingsCmd;->resolveCallingPackage()Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    invoke-interface {p1, v5, v2, p4, v0}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@1f
    move-result-object v1

    #@20
    .line 237
    .local v1, "b":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    #@22
    .line 238
    invoke-virtual {v1}, Landroid/os/Bundle;->getPairValue()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    move-result-object v4

    #@26
    .line 243
    .end local v0    # "arg":Landroid/os/Bundle;
    .end local v1    # "b":Landroid/os/Bundle;
    .end local v4    # "result":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v4

    #@27
    .line 225
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
    .line 226
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
    .line 228
    .end local v2    # "callGetCommand":Ljava/lang/String;
    :cond_3
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@43
    const-string/jumbo v6, "Invalid table; no put performed"

    #@46
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@49
    .line 229
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
    .line 240
    .restart local v2    # "callGetCommand":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    :catch_0
    move-exception v3

    #@64
    .line 241
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
    .line 249
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
    .line 258
    .local v1, "callPutCommand":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    #@e
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@11
    .line 259
    .local v0, "arg":Landroid/os/Bundle;
    const-string/jumbo v3, "value"

    #@14
    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    .line 260
    const-string/jumbo v3, "_user"

    #@1a
    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@1d
    .line 261
    invoke-static {}, Lcom/android/commands/settings/SettingsCmd;->resolveCallingPackage()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-interface {p1, v3, v1, p4, v0}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 247
    .end local v0    # "arg":Landroid/os/Bundle;
    :goto_1
    return-void

    #@25
    .line 250
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
    .line 251
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
    .line 253
    .end local v1    # "callPutCommand":Ljava/lang/String;
    :cond_2
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@41
    const-string/jumbo v4, "Invalid table; no put performed"

    #@44
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@47
    .line 254
    return-void

    #@48
    .line 262
    .restart local v1    # "callPutCommand":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@49
    .line 263
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
    const/4 v4, 0x0

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
    if-eqz v0, :cond_6

    #@11
    .line 75
    iget v0, p0, Lcom/android/commands/settings/SettingsCmd;->mUser:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@13
    const/4 v2, -0x1

    #@14
    if-eq v0, v2, :cond_5

    #@16
    .line 131
    .end local v7    # "arg":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v13, :cond_16

    #@18
    .line 132
    iget v0, p0, Lcom/android/commands/settings/SettingsCmd;->mUser:I

    #@1a
    if-gez v0, :cond_2

    #@1c
    .line 133
    iput v4, p0, Lcom/android/commands/settings/SettingsCmd;->mUser:I

    #@1e
    .line 137
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@21
    move-result-object v6

    #@22
    .line 138
    .local v6, "activityManager":Landroid/app/IActivityManager;
    const/4 v1, 0x0

    #@23
    .line 139
    .local v1, "provider":Landroid/content/IContentProvider;
    new-instance v12, Landroid/os/Binder;

    #@25
    invoke-direct {v12}, Landroid/os/Binder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@28
    .line 142
    .local v12, "token":Landroid/os/IBinder;
    :try_start_2
    const-string/jumbo v0, "settings"

    #@2b
    const/4 v2, 0x0

    #@2c
    .line 141
    invoke-interface {v6, v0, v2, v12}, Landroid/app/IActivityManager;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;

    #@2f
    move-result-object v9

    #@30
    .line 143
    .local v9, "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    if-nez v9, :cond_14

    #@32
    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    #@34
    const-string/jumbo v2, "Could not find settings provider"

    #@37
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3b
    .line 169
    .end local v1    # "provider":Landroid/content/IContentProvider;
    .end local v9    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    :catchall_0
    move-exception v0

    #@3c
    .line 170
    if-eqz v1, :cond_3

    #@3e
    .line 171
    :try_start_3
    const-string/jumbo v2, "settings"

    #@41
    invoke-interface {v6, v2, v12}, Landroid/app/IActivityManager;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    #@44
    .line 169
    :cond_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    #@45
    .line 174
    .end local v6    # "activityManager":Landroid/app/IActivityManager;
    .end local v12    # "token":Landroid/os/IBinder;
    :catch_0
    move-exception v8

    #@46
    .line 175
    .local v8, "e":Ljava/lang/Exception;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@48
    const-string/jumbo v2, "Error while accessing settings provider"

    #@4b
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4e
    .line 176
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    #@51
    .line 69
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    return-void

    #@52
    .line 79
    .restart local v7    # "arg":Ljava/lang/String;
    :cond_5
    :try_start_4
    invoke-direct {p0}, Lcom/android/commands/settings/SettingsCmd;->nextArg()Ljava/lang/String;

    #@55
    move-result-object v0

    #@56
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@59
    move-result v0

    #@5a
    iput v0, p0, Lcom/android/commands/settings/SettingsCmd;->mUser:I

    #@5c
    goto :goto_0

    #@5d
    .line 127
    .end local v7    # "arg":Ljava/lang/String;
    :catch_1
    move-exception v8

    #@5e
    .line 128
    .restart local v8    # "e":Ljava/lang/Exception;
    const/4 v13, 0x0

    #@5f
    goto :goto_1

    #@60
    .line 80
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "arg":Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@62
    sget-object v2, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->UNSPECIFIED:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@64
    if-ne v0, v2, :cond_b

    #@66
    .line 81
    const-string/jumbo v0, "get"

    #@69
    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6c
    move-result v0

    #@6d
    if-eqz v0, :cond_7

    #@6f
    .line 82
    sget-object v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->GET:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@71
    iput-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@73
    goto :goto_0

    #@74
    .line 83
    :cond_7
    const-string/jumbo v0, "put"

    #@77
    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@7a
    move-result v0

    #@7b
    if-eqz v0, :cond_8

    #@7d
    .line 84
    sget-object v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->PUT:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@7f
    iput-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@81
    goto :goto_0

    #@82
    .line 85
    :cond_8
    const-string/jumbo v0, "delete"

    #@85
    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@88
    move-result v0

    #@89
    if-eqz v0, :cond_9

    #@8b
    .line 86
    sget-object v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->DELETE:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@8d
    iput-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@8f
    goto/16 :goto_0

    #@91
    .line 87
    :cond_9
    const-string/jumbo v0, "list"

    #@94
    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@97
    move-result v0

    #@98
    if-eqz v0, :cond_a

    #@9a
    .line 88
    sget-object v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->LIST:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@9c
    iput-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@9e
    goto/16 :goto_0

    #@a0
    .line 91
    :cond_a
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@a2
    new-instance v2, Ljava/lang/StringBuilder;

    #@a4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a7
    const-string/jumbo v3, "Invalid command: "

    #@aa
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v2

    #@ae
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v2

    #@b2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v2

    #@b6
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b9
    goto/16 :goto_1

    #@bb
    .line 94
    :cond_b
    iget-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mTable:Ljava/lang/String;

    #@bd
    if-nez v0, :cond_e

    #@bf
    .line 95
    const-string/jumbo v0, "system"

    #@c2
    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@c5
    move-result v0

    #@c6
    if-nez v0, :cond_c

    #@c8
    .line 96
    const-string/jumbo v0, "secure"

    #@cb
    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@ce
    move-result v0

    #@cf
    if-eqz v0, :cond_d

    #@d1
    .line 101
    :cond_c
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@d4
    move-result-object v0

    #@d5
    iput-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mTable:Ljava/lang/String;

    #@d7
    .line 102
    iget-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@d9
    sget-object v2, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->LIST:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@db
    if-ne v0, v2, :cond_0

    #@dd
    .line 103
    const/4 v13, 0x1

    #@de
    .line 104
    goto/16 :goto_1

    #@e0
    .line 97
    :cond_d
    const-string/jumbo v0, "global"

    #@e3
    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@e6
    move-result v0

    #@e7
    if-nez v0, :cond_c

    #@e9
    .line 98
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@eb
    new-instance v2, Ljava/lang/StringBuilder;

    #@ed
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f0
    const-string/jumbo v3, "Invalid namespace \'"

    #@f3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v2

    #@f7
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v2

    #@fb
    const-string/jumbo v3, "\'"

    #@fe
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v2

    #@102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@105
    move-result-object v2

    #@106
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@109
    goto/16 :goto_1

    #@10b
    .line 106
    :cond_e
    iget-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@10d
    sget-object v2, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->GET:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@10f
    if-eq v0, v2, :cond_f

    #@111
    iget-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@113
    sget-object v2, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->DELETE:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@115
    if-ne v0, v2, :cond_11

    #@117
    .line 107
    :cond_f
    iput-object v7, p0, Lcom/android/commands/settings/SettingsCmd;->mKey:Ljava/lang/String;

    #@119
    .line 108
    iget v0, p0, Lcom/android/commands/settings/SettingsCmd;->mNextArg:I

    #@11b
    sget-object v2, Lcom/android/commands/settings/SettingsCmd;->mArgs:[Ljava/lang/String;

    #@11d
    array-length v2, v2

    #@11e
    if-lt v0, v2, :cond_10

    #@120
    .line 109
    const/4 v13, 0x1

    #@121
    goto/16 :goto_1

    #@123
    .line 111
    :cond_10
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@125
    const-string/jumbo v2, "Too many arguments"

    #@128
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@12b
    goto/16 :goto_1

    #@12d
    .line 114
    :cond_11
    iget-object v0, p0, Lcom/android/commands/settings/SettingsCmd;->mKey:Ljava/lang/String;

    #@12f
    if-nez v0, :cond_12

    #@131
    .line 115
    iput-object v7, p0, Lcom/android/commands/settings/SettingsCmd;->mKey:Ljava/lang/String;

    #@133
    goto/16 :goto_0

    #@135
    .line 118
    :cond_12
    iput-object v7, p0, Lcom/android/commands/settings/SettingsCmd;->mValue:Ljava/lang/String;

    #@137
    .line 119
    iget v0, p0, Lcom/android/commands/settings/SettingsCmd;->mNextArg:I

    #@139
    sget-object v2, Lcom/android/commands/settings/SettingsCmd;->mArgs:[Ljava/lang/String;

    #@13b
    array-length v2, v2

    #@13c
    if-lt v0, v2, :cond_13

    #@13e
    .line 120
    const/4 v13, 0x1

    #@13f
    goto/16 :goto_1

    #@141
    .line 122
    :cond_13
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@143
    const-string/jumbo v2, "Too many arguments"

    #@146
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    #@149
    goto/16 :goto_1

    #@14b
    .line 146
    .end local v7    # "arg":Ljava/lang/String;
    .restart local v1    # "provider":Landroid/content/IContentProvider;
    .restart local v6    # "activityManager":Landroid/app/IActivityManager;
    .restart local v9    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v12    # "token":Landroid/os/IBinder;
    :cond_14
    :try_start_5
    iget-object v1, v9, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    #@14d
    .line 148
    .local v1, "provider":Landroid/content/IContentProvider;
    invoke-static {}, Lcom/android/commands/settings/SettingsCmd;->-getcom_android_commands_settings_SettingsCmd$CommandVerbSwitchesValues()[I

    #@150
    move-result-object v0

    #@151
    iget-object v2, p0, Lcom/android/commands/settings/SettingsCmd;->mVerb:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@153
    invoke-virtual {v2}, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->ordinal()I

    #@156
    move-result v2

    #@157
    aget v0, v0, v2

    #@159
    packed-switch v0, :pswitch_data_0

    #@15c
    .line 165
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@15e
    const-string/jumbo v2, "Unspecified command"

    #@161
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@164
    .line 170
    :cond_15
    :goto_3
    if-eqz v1, :cond_4

    #@166
    .line 171
    :try_start_6
    const-string/jumbo v0, "settings"

    #@169
    invoke-interface {v6, v0, v12}, Landroid/app/IActivityManager;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    #@16c
    goto/16 :goto_2

    #@16e
    .line 150
    :pswitch_0
    :try_start_7
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@170
    iget v2, p0, Lcom/android/commands/settings/SettingsCmd;->mUser:I

    #@172
    iget-object v3, p0, Lcom/android/commands/settings/SettingsCmd;->mTable:Ljava/lang/String;

    #@174
    iget-object v4, p0, Lcom/android/commands/settings/SettingsCmd;->mKey:Ljava/lang/String;

    #@176
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/commands/settings/SettingsCmd;->getForUser(Landroid/content/IContentProvider;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@179
    move-result-object v2

    #@17a
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@17d
    goto :goto_3

    #@17e
    .line 153
    :pswitch_1
    iget v2, p0, Lcom/android/commands/settings/SettingsCmd;->mUser:I

    #@180
    iget-object v3, p0, Lcom/android/commands/settings/SettingsCmd;->mTable:Ljava/lang/String;

    #@182
    iget-object v4, p0, Lcom/android/commands/settings/SettingsCmd;->mKey:Ljava/lang/String;

    #@184
    iget-object v5, p0, Lcom/android/commands/settings/SettingsCmd;->mValue:Ljava/lang/String;

    #@186
    move-object v0, p0

    #@187
    invoke-virtual/range {v0 .. v5}, Lcom/android/commands/settings/SettingsCmd;->putForUser(Landroid/content/IContentProvider;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@18a
    goto :goto_3

    #@18b
    .line 156
    :pswitch_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@18d
    new-instance v2, Ljava/lang/StringBuilder;

    #@18f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@192
    const-string/jumbo v3, "Deleted "

    #@195
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@198
    move-result-object v2

    #@199
    .line 157
    iget v3, p0, Lcom/android/commands/settings/SettingsCmd;->mUser:I

    #@19b
    iget-object v4, p0, Lcom/android/commands/settings/SettingsCmd;->mTable:Ljava/lang/String;

    #@19d
    iget-object v5, p0, Lcom/android/commands/settings/SettingsCmd;->mKey:Ljava/lang/String;

    #@19f
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/commands/settings/SettingsCmd;->deleteForUser(Landroid/content/IContentProvider;ILjava/lang/String;Ljava/lang/String;)I

    #@1a2
    move-result v3

    #@1a3
    .line 156
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a6
    move-result-object v2

    #@1a7
    .line 157
    const-string/jumbo v3, " rows"

    #@1aa
    .line 156
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ad
    move-result-object v2

    #@1ae
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b1
    move-result-object v2

    #@1b2
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1b5
    goto :goto_3

    #@1b6
    .line 160
    :pswitch_3
    iget v0, p0, Lcom/android/commands/settings/SettingsCmd;->mUser:I

    #@1b8
    iget-object v2, p0, Lcom/android/commands/settings/SettingsCmd;->mTable:Ljava/lang/String;

    #@1ba
    invoke-direct {p0, v1, v0, v2}, Lcom/android/commands/settings/SettingsCmd;->listForUser(Landroid/content/IContentProvider;ILjava/lang/String;)Ljava/util/List;

    #@1bd
    move-result-object v0

    #@1be
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c1
    move-result-object v11

    #@1c2
    .local v11, "line$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@1c5
    move-result v0

    #@1c6
    if-eqz v0, :cond_15

    #@1c8
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1cb
    move-result-object v10

    #@1cc
    check-cast v10, Ljava/lang/String;

    #@1ce
    .line 161
    .local v10, "line":Ljava/lang/String;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1d0
    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@1d3
    goto :goto_4

    #@1d4
    .line 180
    .end local v1    # "provider":Landroid/content/IContentProvider;
    .end local v6    # "activityManager":Landroid/app/IActivityManager;
    .end local v9    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v10    # "line":Ljava/lang/String;
    .end local v11    # "line$iterator":Ljava/util/Iterator;
    .end local v12    # "token":Landroid/os/IBinder;
    :cond_16
    invoke-static {}, Lcom/android/commands/settings/SettingsCmd;->printUsage()V

    #@1d7
    goto/16 :goto_2

    #@1d9
    .line 148
    nop

    #@1da
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
