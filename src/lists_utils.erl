%%%-------------------------------------------------------------------
%%% @author Jack Tang <jack@taodinet.com>
%%% @copyright (C) 2012, Jack Tang
%%% @doc
%%%
%%% @end
%%% Created : 28 Dec 2012 by Jack Tang <jack@taodinet.com>
%%%-------------------------------------------------------------------
-module(lists_utils).

%% API
-export([index_of/2]).

%%%===================================================================
%%% API
%%%===================================================================

%%--------------------------------------------------------------------
%% @doc
%% @spec
%% @end
%%--------------------------------------------------------------------

%% Erlang index is 1-based
index_of(Item, List) -> index_of(Item, List, 1).

index_of(_, [], _)  -> not_found;
index_of(Item, [Item|_], Index) -> Index;
index_of(Item, [_|Tl], Index) -> index_of(Item, Tl, Index+1).

%%%===================================================================
%%% Internal functions
%%%===================================================================