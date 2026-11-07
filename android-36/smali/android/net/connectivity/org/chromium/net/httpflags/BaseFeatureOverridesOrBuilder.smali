.class public interface abstract Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverridesOrBuilder;
.super Ljava/lang/Object;
.source "BaseFeatureOverridesOrBuilder.java"

# interfaces
.implements Landroid/net/connectivity/com/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract blacklist containsFeatureStates(Ljava/lang/String;)Z
.end method

.method public abstract blacklist getFeatureStates()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract blacklist getFeatureStatesCount()I
.end method

.method public abstract blacklist getFeatureStatesMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getFeatureStatesOrDefault(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;
.end method

.method public abstract blacklist getFeatureStatesOrThrow(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;
.end method
