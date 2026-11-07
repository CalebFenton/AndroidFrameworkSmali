.class public interface abstract Landroid/net/connectivity/org/chromium/net/httpflags/FlagsOrBuilder;
.super Ljava/lang/Object;
.source "FlagsOrBuilder.java"

# interfaces
.implements Landroid/net/connectivity/com/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract blacklist containsFlags(Ljava/lang/String;)Z
.end method

.method public abstract blacklist getFlags()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract blacklist getFlagsCount()I
.end method

.method public abstract blacklist getFlagsMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getFlagsOrDefault(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;
.end method

.method public abstract blacklist getFlagsOrThrow(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;
.end method
