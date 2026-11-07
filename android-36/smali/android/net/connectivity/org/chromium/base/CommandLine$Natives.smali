.class interface abstract Landroid/net/connectivity/org/chromium/base/CommandLine$Natives;
.super Ljava/lang/Object;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/CommandLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Natives"
.end annotation


# virtual methods
.method public abstract blacklist appendSwitch(Ljava/lang/String;)V
.end method

.method public abstract blacklist appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract blacklist appendSwitchesAndArguments([Ljava/lang/String;)V
.end method

.method public abstract blacklist getSwitchValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract blacklist getSwitchesFlattened()[Ljava/lang/String;
.end method

.method public abstract blacklist hasSwitch(Ljava/lang/String;)Z
.end method

.method public abstract blacklist init([Ljava/lang/String;)V
.end method

.method public abstract blacklist removeSwitch(Ljava/lang/String;)V
.end method
