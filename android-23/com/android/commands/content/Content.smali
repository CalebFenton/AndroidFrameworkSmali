.class public Lcom/android/commands/content/Content;
.super Ljava/lang/Object;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/content/Content$Parser;,
        Lcom/android/commands/content/Content$Tokenizer;,
        Lcom/android/commands/content/Content$Command;,
        Lcom/android/commands/content/Content$InsertCommand;,
        Lcom/android/commands/content/Content$DeleteCommand;,
        Lcom/android/commands/content/Content$CallCommand;,
        Lcom/android/commands/content/Content$ReadCommand;,
        Lcom/android/commands/content/Content$QueryCommand;,
        Lcom/android/commands/content/Content$UpdateCommand;
    }
.end annotation


# static fields
.field private static final USAGE:Ljava/lang/String; = "usage: adb shell content [subcommand] [options]\n\nusage: adb shell content insert --uri <URI> [--user <USER_ID>] --bind <BINDING> [--bind <BINDING>...]\n  <URI> a content provider URI.\n  <BINDING> binds a typed value to a column and is formatted:\n  <COLUMN_NAME>:<TYPE>:<COLUMN_VALUE> where:\n  <TYPE> specifies data type such as:\n  b - boolean, s - string, i - integer, l - long, f - float, d - double\n  Note: Omit the value for passing an empty string, e.g column:s:\n  Example:\n  # Add \"new_setting\" secure setting with value \"new_value\".\n  adb shell content insert --uri content://settings/secure --bind name:s:new_setting --bind value:s:new_value\n\nusage: adb shell content update --uri <URI> [--user <USER_ID>] [--where <WHERE>]\n  <WHERE> is a SQL style where clause in quotes (You have to escape single quotes - see example below).\n  Example:\n  # Change \"new_setting\" secure setting to \"newer_value\".\n  adb shell content update --uri content://settings/secure --bind value:s:newer_value --where \"name=\'new_setting\'\"\n\nusage: adb shell content delete --uri <URI> [--user <USER_ID>] --bind <BINDING> [--bind <BINDING>...] [--where <WHERE>]\n  Example:\n  # Remove \"new_setting\" secure setting.\n  adb shell content delete --uri content://settings/secure --where \"name=\'new_setting\'\"\n\nusage: adb shell content query --uri <URI> [--user <USER_ID>] [--projection <PROJECTION>] [--where <WHERE>] [--sort <SORT_ORDER>]\n  <PROJECTION> is a list of colon separated column names and is formatted:\n  <COLUMN_NAME>[:<COLUMN_NAME>...]\n  <SORT_ORDER> is the order in which rows in the result should be sorted.\n  Example:\n  # Select \"name\" and \"value\" columns from secure settings where \"name\" is equal to \"new_setting\" and sort the result by name in ascending order.\n  adb shell content query --uri content://settings/secure --projection name:value --where \"name=\'new_setting\'\" --sort \"name ASC\"\n\nusage: adb shell content call --uri <URI> --method <METHOD> [--arg <ARG>]\n       [--extra <BINDING> ...]\n  <METHOD> is the name of a provider-defined method\n  <ARG> is an optional string argument\n  <BINDING> is like --bind above, typed data of the form <KEY>:{b,s,i,l,f,d}:<VAL>\n\nusage: adb shell content read --uri <URI> [--user <USER_ID>]\n  Example:\n  # cat default ringtone to a file, then pull to host\n  adb shell \'content read --uri content://settings/system/ringtone > /mnt/sdcard/tmp.ogg\' && adb pull /mnt/sdcard/tmp.ogg\n\n"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 620
    new-instance v1, Lcom/android/commands/content/Content$Parser;

    #@2
    invoke-direct {v1, p0}, Lcom/android/commands/content/Content$Parser;-><init>([Ljava/lang/String;)V

    #@5
    .line 621
    .local v1, "parser":Lcom/android/commands/content/Content$Parser;
    invoke-virtual {v1}, Lcom/android/commands/content/Content$Parser;->parseCommand()Lcom/android/commands/content/Content$Command;

    #@8
    move-result-object v0

    #@9
    .line 622
    .local v0, "command":Lcom/android/commands/content/Content$Command;
    if-eqz v0, :cond_0

    #@b
    .line 623
    invoke-virtual {v0}, Lcom/android/commands/content/Content$Command;->execute()V

    #@e
    .line 619
    :cond_0
    return-void
.end method
