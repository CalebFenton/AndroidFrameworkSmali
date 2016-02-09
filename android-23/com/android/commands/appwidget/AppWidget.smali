.class public Lcom/android/commands/appwidget/AppWidget;
.super Ljava/lang/Object;
.source "AppWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/appwidget/AppWidget$Parser;,
        Lcom/android/commands/appwidget/AppWidget$Tokenizer;,
        Lcom/android/commands/appwidget/AppWidget$SetBindAppWidgetPermissionCommand;
    }
.end annotation


# static fields
.field private static final USAGE:Ljava/lang/String; = "usage: adb shell appwidget [subcommand] [options]\n\nusage: adb shell appwidget grantbind --package <PACKAGE>  [--user <USER_ID> | current]\n  <PACKAGE> an Android package name.\n  <USER_ID> The user id under which the package is installed.\n  Example:\n  # Grant the \"foo.bar.baz\" package to bind app widgets for the current user.\n  adb shell grantbind --package foo.bar.baz --user current\n\nusage: adb shell appwidget revokebind --package <PACKAGE> [--user <USER_ID> | current]\n  <PACKAGE> an Android package name.\n  <USER_ID> The user id under which the package is installed.\n  Example:\n  # Revoke the permisison to bind app widgets from the \"foo.bar.baz\" package.\n  adb shell revokebind --package foo.bar.baz --user current\n\n"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 161
    new-instance v1, Lcom/android/commands/appwidget/AppWidget$Parser;

    #@2
    invoke-direct {v1, p0}, Lcom/android/commands/appwidget/AppWidget$Parser;-><init>([Ljava/lang/String;)V

    #@5
    .line 162
    .local v1, "parser":Lcom/android/commands/appwidget/AppWidget$Parser;
    invoke-virtual {v1}, Lcom/android/commands/appwidget/AppWidget$Parser;->parseCommand()Ljava/lang/Runnable;

    #@8
    move-result-object v0

    #@9
    .line 163
    .local v0, "command":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    #@b
    .line 164
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@e
    .line 160
    :cond_0
    return-void
.end method
